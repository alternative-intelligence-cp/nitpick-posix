# Conformance

What "POSIX" claims here, exactly, and every place this implementation departs
from the standard or from what a GNU user expects. **This is the page a user
most needs**, and it is generated from the build rather than written by hand
wherever that is possible.

---

## 1. The claim

**Rule K-1.** This repository implements a **subset** of POSIX.1-2017 XCU,
listed in [`SCOPE.md`](SCOPE.md) §3, for the utilities it builds, in the
**C/POSIX locale only**, on **Linux/x86-64**.

It does not claim certification, and the difference is worth stating: POSIX
certification is a commercial test suite and a trademark licence, and nothing
here has been run against it.

**Rule K-2 — every departure is listed, and the list is derived.**
`check_catalogue` (TESTING.md §6) fails the build if a utility exists that is
in neither `SCOPE.md`'s table nor this document's, so the two cannot drift
apart in the direction that matters.

---

## 2. Absent, by class

The full reasoning is `SCOPE.md` §2. Summarised here because this is the page
somebody checks:

| Absent | Count | Why, in one line |
|---|---|---|
| shell built-ins | ~15 | they are the shell's; `/bin/cd` would do nothing observable |
| `sh`, `vi`, `ex`, `make` | 4 | each is its own project, and each is a candidate repository under `nitpick-apps` |
| the C/Fortran toolchain | 7 | `c99` in a project whose premise is that it uses no C (PX-005) |
| SCCS | 10 | superseded twice over (PX-006) |
| batch queues | 11 | the Batch Environment Services option, effectively dead |
| UUCP, `talk`, `mesg`, `write`, `lp` | 8 | need a daemon or a social convention from 1985 |
| locale machinery | 4 | the ecosystem has no locale; `iconv` is the one with a real case and is deferred |

---

## 3. Departures in what *is* built

Each row is a deliberate decision with its own record. **None of them is a
bug**, and each is tested for deliberately (TESTING.md V-5).

| Utility | Departure | Why |
|---|---|---|
| `grep` | **no back-references** in basic REs (`\(…\)` … `\1`); such a pattern is refused by name with its byte offset | back-references force a backtracking engine, and `grep` is the utility most likely to be pointed at input somebody else controls. `nitpick-regex` RX-102. The same choice `ripgrep` makes |
| all | **options do not permute**; `ls foo -l` treats `-l` as an operand | this is the standard's rule. GNU permutes unless `POSIXLY_CORRECT` is set — a utility whose meaning depends on an environment variable behaves differently on two machines running one script. `ARGUMENTS.md` G-14 |
| all | **no `LC_*` support**; the C/POSIX locale always | the ecosystem has no locale. `sort` orders by byte value, `[a-z]` is those twenty-six |
| `who` | deferred | `utmp` is a binary format with no standard layout and a security history. `SCOPE.md` O-C3 |

---

## 4. Extensions

Present and **not** in the standard. Listed because C-2 requires it and because
a user relying on one should know it is not portable.

| Utility or option | What it is |
|---|---|
| `--help`, `--version` | on every utility. POSIX defines neither; their absence is a real annoyance. `ARGUMENTS.md` G-16 |
| `rev`, `clear` | two-line programs everybody expects |
| per-utility long options | each recorded in that utility's own specification; never required, never the only spelling |

---

## 5. Where GNU and POSIX disagree, and we follow POSIX

**Rule K-3.** These are the cases where agreeing with the installed `coreutils`
would be *wrong*, and where the differential suite therefore cannot be the
oracle (TESTING.md V-3). Each needs a spec-derived case.

The catalogue is filled as the utilities are built. Known in advance:

- **option permutation** (§3);
- **`echo` and backslash escapes** — POSIX `echo` is famously
  under-specified and implementations differ on `-n` and `\c`. The behaviour
  chosen is stated in `echo`'s own specification and is one of the few places
  where "what the standard says" genuinely does not decide;
- **`head -c` / `tail -c`** and other byte-count options that POSIX does not
  define for those utilities;
- **`sort` stability**, which POSIX does not require and GNU provides under
  `-s`.

**Rule K-4 — a case in this section is worth more than ten elsewhere.** It is
where an implementation stops being a port and starts being a decision, and it
is the section a reviewer should read first.
