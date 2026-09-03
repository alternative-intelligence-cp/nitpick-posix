# Roadmap — the cycle map

The specification set is written and `../DECISIONS.md` holds the seventeen
decisions it rests on. This is the plan built on them.

Conventions are the ecosystem's (`../../../nitpick-libs/PLAYBOOK.md` §8): a
cycle is a folder, a subcycle is a file, a finished cycle moves to `done/`, and
each cycle's opening subcycle file is written at the previous cycle's close.

---

## What shapes this plan

**Breadth first, then depth.** The shared runtime comes before any utility; a
dozen trivial utilities come before any hard one, to exercise that runtime
against real programs while it can still change cheaply; the languages come
last, because each is a cycle and by then the runtime has stopped moving.

**Two cycles are gated on a library, and gate it back.** `grep` (0.5) is
`nregex`'s dogfood consumer and `nregex`'s cycle 0.14 is gated on it existing
and being used; `date` and `crontab` (0.7) are `ntime`'s, gating its 0.7. That
is a genuine mutual dependency between repositories and the plan says so rather
than discovering it.

**The riskiest thing is in cycle 0.0 and it is not code.** PX-010 rests
entirely on a macro being able to splice a `pick` into a function body, which
nothing in the compiler's own tree demonstrates. Probe 02 answers it on day
one; a negative answer changes the repository's shape, and the fallback is
written down rather than improvised.

---

## The cycles

| Cycle | Topic | Gated on |
|---|---|---|
| **0.0** | **Foundations** — the language probes, the catalogue check, the harness | — |
| **0.1** | **The shared runtime** — `src/posix/`: arguments, exit, diagnostics, streams, numbers; the size spike | 0.0 |
| **0.2** | **The trivial set** — twelve programs that exercise the runtime and almost nothing else | 0.1 |
| **0.3** | **Text streams I** — `cat`, `head`, `tail`, `tee`, `wc`, `nl`, `fold`, `expand`, `unexpand`, `cut`, `paste`, `tr` | 0.2 |
| **0.4** | **Text streams II** — `sort`, `uniq`, `comm`, `join`, `split`, `csplit`, `od`, `cmp`, `strings`, `cksum`, `tsort` | 0.3 |
| **0.5** | **`grep`** — and `nregex`'s dogfood cycle | 0.4, `nregex` 0.13 |
| **0.6** | **Filesystem** — `ls`, `cp`, `mv`, `rm`, `mkdir`, `rmdir`, `ln`, `touch`, `find`, `du`, `df`, `chmod`, `chgrp`, `chown`, `pathchk`, `mkfifo`, `link`, `unlink`, `file` | 0.3 |
| **0.7** | **Time** — `date`, `crontab`, `at`, `batch`, `cal`, `time`; and `ntime`'s dogfood cycle | 0.2, `ntime` 0.6 |
| **0.8** | **Process** — `ps`, `kill`, `nice`, `renice`, `nohup`, `env`, `xargs`, `fuser` | 0.6 |
| **0.9** | **The small languages** — `expr`, `test`, `bc`, `m4` | 0.4 |
| **0.10** | **`sed`** | 0.5, 0.9 |
| **0.11** | **`awk`** — the largest cycle in the plan | 0.10 |
| **0.12** | **Terminal, archive, compare** — `stty`, `tput`, `tabs`; `pax`, `compress`, `uncompress`, `zcat`; `diff`, `patch`; `ed` | 0.6 |
| **0.13** | **Hardening** — the fuzz sweep, the conformance audit, the departure list reconciled | 0.12 |
| **1.0** | **Release** — man pages, the conformance document published, versioning | 0.13 |

---

## What each cycle produces

### 0.0 — Foundations
**The probes first.** Nine programs asking the compiler whether this
repository's shape is spellable. Probe 02 — a `failsafe` that is entirely a
macro expansion — is the one that matters; probes for argv handling, `exit`
from `main`, a shared module compiled into many artifacts, and the `cstring[]`
argv borrow rules follow.

**Then the catalogue check (O-C1)**: `SCOPE.md`'s table diffed against the
standard's own table of contents, which amends the document rather than the
reverse. Then the harness: build one utility, run a conformance case, run a
differential case, and the self-check that proves it can fail.

### 0.1 — The shared runtime
`src/posix/`: `args.npk` (the twelve guidelines, table-driven), `exit.npk`,
`diag.npk` (one format, the errno table), `io.npk` (the `-` convention, the
write-all loop, the line reader with its incomplete-last-line answer),
`num.npk` (**the only place an input-derived multiply happens**), `mode.npk`
(the symbolic mode grammar, shared by four utilities later).

**The size spike (PX-014).** Build `true`, measure it, and decide with the
number whether PX-001's declined BusyBox form comes back. Thresholds are set
before the measurement.

### 0.2 — The trivial set
`true`, `false`, `echo`, `pwd`, `basename`, `dirname`, `sleep`, `tty`, `uname`,
`id`, `logname`, `getconf`. Twelve programs, almost no logic, and their whole
purpose is to exercise the runtime against real usage before anything depends
on it. **`echo` is the interesting one** and O-T1 is settled here.

### 0.3–0.4 — Text streams
The core of the set. `wc`'s byte/character/line distinction is where
`UTILITY_MODEL.md` U-11's UTF-8 rule first bites; `sort`'s key parsing is the
first place the numeric-argument hazard (S-9) is exercised in anger; `od`'s
radix conversion is the first real obligation for cycle 1.5.

### 0.5 — `grep`
`nregex`'s consumer, and the cycle where RX-102's departure becomes visible: a
back-reference is refused by name, with the byte offset and the reason.

### 0.6 — Filesystem
The cycle with the security surface. `FILESYSTEM.md` is entirely about this
one: descriptor-relative traversal, the symlink hazard, TOCTOU, depth limits,
and filenames that are not text.

### 0.7 — Time
`ntime`'s consumers. `date` demonstrates TM-104 — the `%` grammar is parsed
*here* and mapped onto the library's typed layout — and `crontab`/`at`
exercise the DST edges, which is where a date library is actually wrong.

### 0.9–0.11 — The languages
`expr` and `test` are small and share an expression evaluator. `bc` is an
arbitrary-precision calculator and the ecosystem has `int256` and `frac`.
`m4` is a macro processor with its own recursion hazard. **`sed` and `awk` get
their own cycles** and `awk` is the largest single thing here — a grammar, a
value model, its own regular expressions, and the natural large consumer for
both `nparse` and `nregex`.

---

## Ordering notes

- **The probes come first**, and probe 02 gates the repository's shape rather
  than a cycle's contents.
- **The shared runtime precedes every utility**, and the trivial set exists to
  exercise it while changing it is still cheap.
- **`find` waits for 0.6**, not 0.3, because it needs the traversal machinery
  and the traversal machinery is where the security work is.
- **`sed` waits for `grep`**, because both want the regex library exercised
  first and `grep` is the simpler consumer.
- **A cycle gated on a library is gated on that library's cycle, and gates it
  back.** 0.5 ↔ `nregex` 0.14; 0.7 ↔ `ntime` 0.7. Neither can be "finished"
  alone, and both plans say so.
- **Nothing is blocked on a decision.** Four questions are open for the author
  and each has a recommendation; none of them gates cycle 0.0.
