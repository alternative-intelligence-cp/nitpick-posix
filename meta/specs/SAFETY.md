# Safety, errors, and sixty `failsafe` handlers

The constraints. Two of them are specific to this repository and have no
analogue in the libraries, because this is the first project in the ecosystem
that builds **many programs from one tree**.

---

## 1. What the language imposes

`../../../nitpick-libs/PLAYBOOK.md` §2 is the full table and it applies
unchanged. The rows that bite hardest here:

- **`failsafe`'s `pick` must name every error that can reach it** (REACH-002),
  and forgetting one is a compile error. §2 is the consequence.
- **Plain integer `+ - *` traps on overflow** (D-210). Every utility that parses
  a number from an argument or a file is exposed; §4.
- **`exit` is legal only in `main` and `failsafe`** (D-224), which is exactly
  right for a program and worth noting because a library may not.
- **Indexing traps**, and these programs index buffers derived from untrusted
  files all day.
- **Owning values are move-only**, so nothing stored in an array owns anything.

---

## 2. Sixty `failsafe` handlers, and the macro that writes them

**The problem, stated plainly.** Every utility is a program, so every utility
writes `failsafe`, and REACH-002 requires its `pick` to name **every** reachable
error — the system set (heap, overflow, bounds, deadline, wild-leak, …) plus
every identity its imports declare. That is roughly twenty arms. Sixty
utilities is twelve hundred lines of boilerplate that must stay in sync, and a
utility that gains an import gains an arm in a file nobody was looking at.

**Rule S-1.** A helper function cannot solve it. `pick` exhaustiveness is
checked **in `failsafe`'s own body**, so `drop posix_failsafe(e);` discharges
nothing — the compiler still wants the arms, in that function, in that file.

**Rule S-2 — the answer is a macro**, and this repository is the ecosystem's
first real consumer of one:

```nitpick
func:failsafe = int32(Error:e) {
    #posix_failsafe(e)          // expands to the shared pick, arms and all
};
```

Macros are AST-native, hygienic, and expanded before semantic analysis
(D-057), which is exactly what is needed: the expansion *is* the `pick`, so the
exhaustiveness check sees it. One definition, sixty call sites, and a new
system error is one edit.

**Rule S-3 — the macro is verified before anything is built on it.** Cycle
0.0's probe 02 is a program whose entire `failsafe` is a macro expansion,
compiled and trapped deliberately. If a macro cannot splice a `pick` into a
function body, **this repository's whole shape changes**, and finding that out
on day one costs a day. The fallback — a generated file per utility, written by
the harness and checked in — is worse in every way except that it certainly
works, and it is written down in the probe's notes so the fallback is not
improvised.

**Rule S-4 — a utility that imports a library extends the macro, it does not
replace it.** `#posix_failsafe_with(e, ERegexPattern, ETimeValue)` — the shared
arms plus the named extras. The alternative, each utility hand-writing its own,
is the twelve hundred lines again.

---

## 3. The error budget, inverted

**Rule S-5.** A library *spends* somebody's arms; an application **pays**. This
repository is where the ecosystem's error budgets are settled up, and the
arithmetic is worth stating because it is the strongest argument for the
budgets being small:

| Utility | Imports | Arms owed |
|---|---|---|
| `true` | nothing | the system set alone |
| `grep` | `nregex` | system + **1** |
| `date` | `ntime` | system + **3** |
| a hypothetical utility importing all five libraries | — | system + **19** |

`nregex`'s single identity is what makes `grep`'s `failsafe` readable. That is
not an aesthetic observation: it is the budget rule (`PLAYBOOK.md` §3) paying
out, in the only place the payment is visible.

**Rule S-6 — this repository declares its own identities sparingly too**, and
the budget is **three**:

| Error | Raised when |
|---|---|
| `EPosixUsage` | the arguments are wrong — the only error that maps to exit status 2 |
| `EPosixInput` | an input could not be read, opened, or made sense of |
| `EPosixOutput` | an output could not be written |

Everything else is a kernel errno **forwarded verbatim**, which costs no arm
(`PLAYBOOK.md` §3), and everything a *utility* wants to distinguish rides as a
field on the value it returns.

---

## 4. `SIGPIPE` — the third position in the ecosystem, and the right one here

**Rule S-7.** A POSIX utility **leaves `SIGPIPE` at its default disposition**,
which terminates the process. It does not block it, and it does not pass
`MSG_NOSIGNAL`.

This is the opposite of what `ntui` does (T-113: blocks it) and different again
from `nsockets` (SK-013: `MSG_NOSIGNAL` on every send), and all three are
right — which is why `PLAYBOOK.md` §2's rule is *know what the default
disposition is*, not *block it*.

**Why default is correct here.** `yes | head -5` works **because** `yes` dies of
`SIGPIPE` when `head` exits. A `yes` that survived a closed stdout would run
until the machine did. The signal is the shutdown mechanism of a pipeline, the
exit status 141 it produces is meaningful and scripts read it, and a utility
that swallowed it would break the composition the whole utility set exists for.

**Rule S-8.** The consequence is that a utility's writes may die mid-write with
no cleanup, and that is **acceptable and intended** — a utility holds no
resource whose loss matters, which is the difference between it and a terminal
program. A utility that *does* acquire such a resource (a temporary file, a
lock) says so, and handles it, and is the exception rather than the rule.

---

## 5. Untrusted input

Every one of these programs reads data somebody else wrote. `PLAYBOOK.md` §5
applies in full; the two that bite most:

**Rule S-9 — the accumulator.** `acc = acc * 10 + d` traps on overflow (D-210).
`head -n 99999999999999999999`, a `sort -k` field number, a `dd bs=`, an `od
-A` offset, a line count that exceeds `int64` — every one of these is an
argument or a file byte becoming a number, and every one is a **denial of
service** if it is not routed through a checked helper. `src/posix/num.npk` is
the only place an input-derived multiply happens, and a harness check greps for
the ones that are not.

**Rule S-10 — no native recursion on attacker-controlled structure.** `find`
descends a directory tree of the user's choosing; a symlink loop or a 40 000-
deep path is a stack overflow. An explicit stack with a stated depth limit, and
the same rule for `du`, `cp -R`, `rm -r`, `pax` and `diff -r`.

**Rule S-11 — a path is not a string.** The prelude's `Path` is absolute,
lexically normalised and free of interior NULs, and **lexical normalisation is
not kernel resolution** (D-054): a containment check that survives symlinks
uses `openat` with `O_NOFOLLOW`, which `lib/nfs.npk` in the compiler tree
already demonstrates. Every utility that walks a tree under a root — `find`,
`du`, `cp -R`, `rm -r` — uses the descriptor-relative family, not string
prefixes.

---

## 6. Exit status is an interface

**Rule S-12.** `0` success; `1` a failure the utility is reporting; `2` a usage
error; and any other status the standard names for a particular utility, stated
in that utility's own specification. `grep` returning 1 for "no match" is not a
failure and is the canonical example of why the general rule has exceptions
that must be written down.

**Rule S-13.** A utility killed by a signal exits with `128 + signum` by the
shell's convention, and this is not something the utility does — it is what
`SIGPIPE` at default (S-7) produces, and scripts depend on it.

---

## 7. Open items

- **O-S1 — whether the three identities are two.** `EPosixOutput` may not earn
  its place: a failed write is a forwarded errno in almost every case, and the
  one case that is not (a short write that cannot be retried) may be better as
  a field. Settled at cycle 0.1 against evidence, not now.
