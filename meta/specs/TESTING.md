# Testing

The instrument that matters here is one the libraries could not use: **the
system's own utilities are a reference implementation, and they are already
installed.**

---

## 1. Differential testing is the oracle

**Rule V-1.** For every utility and every case, run **ours** and the **system's**
on the same input and require the same standard output, the same standard error
shape, and the same exit status.

This is `PLAYBOOK.md` §4's cross-implementation rule — *where a library has
several implementations of one operation, require them to agree* — with the
second implementation supplied by the operating system. It is stronger than
anything hand-written: nobody has to know what `sort -k2,3 -t: -n` does on
mixed-width fields, because `sort` does.

**Rule V-2 — the reference is named and pinned per run.** GNU coreutils and
BusyBox disagree, and both disagree with the standard in places. The harness
records which binary and which version answered, and a differential result is
meaningless without it. `--reference=busybox` runs the whole suite against the
other one, and a case where the two references disagree is **a case that must
have a spec-derived expectation instead** (§2) — the disagreement is the signal
that the standard is ambiguous there.

**Rule V-3 — differential testing does not prove conformance**, and the
document says so where somebody might assume otherwise. It proves agreement
with an implementation that is itself non-conformant in known ways. Where GNU
extends the standard, agreeing with GNU is *wrong*, and those cases are
[`CONFORMANCE.md`](CONFORMANCE.md)'s to enumerate and §2's to test.

---

## 2. Spec-derived cases

**Rule V-4.** Every utility has a case set written from **the standard's own
text**, independent of any implementation, covering: each option, each
documented exit status, the operand-count boundaries, the empty input, the
input with no trailing newline (U-6), and each error the standard names.

**Rule V-5.** Where a spec-derived case and the differential reference
disagree, the spec wins and the divergence is recorded in `CONFORMANCE.md`.
That row is then a *feature* of this implementation, tested deliberately, and
not a failure to be explained away.

---

## 3. The stages

| Stage | Passes when |
|---|---|
| `probe` | the cycle-0.0 language probes run and exit 0 |
| `unit` | `src/posix/`'s own behaviour, judged by exit code |
| `conformance` | the spec-derived cases pass |
| `differential` | ours and the reference agree, on a recorded reference version |
| `fuzz` | no input traps any utility (§5) |

**Rule V-6 — the differential stage is skipped loudly when the reference is
absent**, naming which binary was not found. A suite that silently skips is
green on a machine where it ran nothing.

---

## 4. The case format

**Rule V-7.** A case is a directory, not a program:

```
tests/conformance/wc/lines-no-trailing-newline/
  cmd          argv, one token per line, no shell
  stdin        the input, byte-exact (optional)
  files/       the tree the case runs in (optional)
  stdout       expected, byte-exact
  stderr       expected, or a pattern when it names a path
  status       expected exit status
  spec         the paragraph of the standard this case is derived from
```

**No shell anywhere.** `cmd` is argv, so quoting cannot change what is tested,
and a case cannot accidentally test the shell.

**Rule V-8 — the `spec` file is required for a `conformance` case** and forbidden
for a `differential` one. A conformance case with no citation is a case
somebody guessed at; a differential case needs none because the reference is
the citation.

---

## 5. Fuzzing

**Rule V-9.** Every utility is fuzzed over its **arguments** as well as its
input, because the argument parser is shared and a defect in it is a defect in
all sixty. The invariants: never traps, always terminates, exits with a status
in its documented set, and never writes outside the files it was given.

**Rule V-10 — the numeric arguments get their own corpus**, generated rather
than random: for every option that takes a number, the values `0`, `1`, `-1`,
`2^31-1`, `2^31`, `2^63-1`, `2^63`, `2^64`, a 40-digit number, and the empty
string. `SAFETY.md` S-9 is why — an accumulator that traps is a denial of
service, and these are the ten inputs that find it.

---

## 6. What the harness checks about the tree

Not tests. Checks that diff the repository against the documents describing it.

| Check | Diffs |
|---|---|
| `check_catalogue` | the utilities built against `SCOPE.md`'s table and `CONFORMANCE.md`'s departures — a utility that exists and is in neither fails |
| `check_synopsis` | each utility's generated usage text against its `OptSpec` table (G-17) |
| `check_failsafe_current` | every `src/util/*/failsafe.npk` regenerated and diffed against what is committed; any difference fails. *Replaced `check_failsafe_macro` under PX-100, when probe 02 established that a macro cannot be shared between modules* |
| `check_no_raw_accumulate` | no input-derived multiply outside `src/posix/num.npk` |
| `check_no_isatty` | no utility branches on whether output is a terminal (U-13) |
| `check_no_shell` | no case's `cmd` is a shell invocation, and no utility spawns another (U-13) |
| `check_locale_free` | no utility reads `LANG`, `LC_*`, or a collation table |
| `check_exit_documented` | every `exit` literal in a utility appears in that utility's documented status set (S-12) |

**Rule V-11.** `check_exit_documented` is the one to write first. A utility's
exit statuses are its interface, scripts depend on them, and an undocumented
one is the defect nobody notices until a pipeline behaves differently.
