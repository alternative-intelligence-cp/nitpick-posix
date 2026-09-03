# Scope — which utilities, and why

The central document. "The POSIX utilities" is three different lists and this
one says which is being built, which is not, and what each exclusion costs.

---

## 1. The three lists

| List | Size | What it is |
|---|---|---|
| **POSIX.1-2017 XCU** | ~160 | what the standard defines |
| **what the prototype built** | 264 `.npk` files | POSIX *plus* GNU coreutils additions (`b2sum`, `base32`, `chcon`, `nproc`) that are in no standard |
| **what is worth having** | ~60 | in the standard, a standalone program, and somebody runs it |

**Rule C-1 — the third list is the 1.0.** The first is a conformance target
nobody achieves in full and several of whose members are dead. The second is
what one earlier effort happened to build. The third is the intersection that
earns its maintenance.

**Rule C-2 — every utility in the standard and not built is a stated
departure**, listed in [`CONFORMANCE.md`](CONFORMANCE.md) with its reason.
Every utility built and not in the standard is a stated **extension**, listed
in the same place. Neither is a surprise, and the list is derived from the
build rather than written by hand.

> **Rule C-3 — the catalogue below is checked against the standard's own table
> of contents in cycle 0.0, before it is relied on.** It was assembled from
> knowledge, and a normative list assembled from knowledge is exactly the kind
> of thing that is 95% right and wrong in the places that matter. Cycle 0.0.1
> is that check, and it amends this document rather than the reverse.

---

## 2. What is excluded, by class, with the reason

The exclusions are more interesting than the inclusions, and they group.

### 2.1 Shell built-ins — ~15 utilities that cannot be programs

`alias`, `bg`, `cd`, `command`, `fc`, `fg`, `getopts`, `hash`, `jobs`, `read`,
`type`, `ulimit`, `umask`, `unalias`, `wait`.

**Rule C-4.** These are in XCU and they are **not standalone programs**. `cd`
in a child process changes that child's directory and exits; `wait` waits for
the shell's children. They are the shell's, they are implemented by the shell,
and a `/bin/cd` would be a program that does nothing observable.

They belong to `sh`, which §2.2 excludes as its own project. Listing them here
is the point: somebody will notice `cd` is missing, and this is the answer.

### 2.2 Programs that are their own project (PX-004), and the toolchain (PX-005)

| Excluded | Why |
|---|---|
| `sh` | a POSIX shell is a language, a job-control system and a parser, and it is bigger than everything else in this repository combined |
| `vi`, `ex`, `ed` | `vi` is a large interactive application. `ed` is small and is **kept** (§3) because `ex`/`vi` are what is large |
| `make` | a language, a dependency engine and a rule database; and the ecosystem has `npkg` |
| `c99`, `fort77`, `lex`, `yacc`, `cflow`, `cxref`, `ctags` | a C and Fortran toolchain. Building a C compiler inside a project whose premise is that it uses no C is a joke that writes itself |

**Rule C-5.** Each is a candidate for its own repository under
`nitpick-apps`, and `vi` in particular is the natural large consumer for
`ntui` after its own dogfood cycle. Excluded here means "not in this
repository", not "never".

### 2.3 Dead by measurement (PX-005's siblings, PX-006)

| Group | Members | Why |
|---|---|---|
| SCCS | `admin`, `delta`, `get`, `prs`, `rmdel`, `sact`, `sccs`, `unget`, `val`, `what` | a version-control system superseded twice over. Nobody runs these |
| Batch queues | `qalter`, `qdel`, `qhold`, `qmove`, `qmsg`, `qrerun`, `qrls`, `qselect`, `qsig`, `qstat`, `qsub` | the Batch Environment Services option; effectively dead |
| UUCP | `uucp`, `uustat`, `uux` | dial-up file copy |
| Terminal chat | `talk`, `mesg`, `write` | require a daemon and a social convention from 1985 |
| Printing | `lp` | needs a spooler this project does not have |

**Rule C-6.** "Dead" is a claim and it is made explicitly so it can be
contested. If somebody produces a consumer for `sccs`, the exclusion is
amended.

### 2.4 Locale machinery

`locale`, `localedef`, `gencat`, `iconv`.

**Rule C-7.** The ecosystem has **no locale**. `ntime` declined localisation
(TM-024), `ntui` declined it, and the text model everywhere is Unicode with a
C/POSIX collation. `locale` would print a configuration nothing reads, and
`localedef` would compile a database nothing consults.

`iconv` is the interesting member: it is a real, useful transcoder and it is
the one of the four with a genuine case for inclusion. It is **out at 1.0 and
recorded as a candidate**, because a transcoder is a table-generation project
of its own shape and belongs beside the Unicode tables rather than bolted on.

### 2.5 The languages inside the utility set

`awk`, `sed`, `bc`, `m4`, `expr`, `test`.

**Rule C-8.** These are **in scope and each gets its own cycle.** They are not
excluded — `sed` and `awk` are among the most-used utilities in the set — but
they are programming languages wearing a utility's clothes, and planning them
as though they were `wc` is how they end up half-implemented.

`awk` in particular is a complete language with its own grammar, its own value
model and its own regular expressions, and it is the natural large consumer for
**both** `nparse` and `nregex`. Its cycle is the largest in this plan.

---

## 3. What is built — the working set

Grouped by the cycle that builds them
([`../roadmap/ROADMAP.md`](../roadmap/ROADMAP.md)). Counts are the target; the
catalogue check (C-3) may move a member.

| Group | Utilities |
|---|---|
| **trivial** | `true`, `false`, `echo`, `pwd`, `basename`, `dirname`, `sleep`, `tty`, `uname`, `id`, `logname`, `getconf` |
| **text streams I** | `cat`, `head`, `tail`, `tee`, `wc`, `nl`, `fold`, `expand`, `unexpand`, `cut`, `paste`, `tr`, `rev`\* |
| **text streams II** | `sort`, `uniq`, `comm`, `join`, `split`, `csplit`, `od`, `cmp`, `strings`, `cksum`, `tsort` |
| **pattern** | `grep` |
| **filesystem** | `ls`, `cp`, `mv`, `rm`, `mkdir`, `rmdir`, `ln`, `touch`, `find`, `du`, `df`, `chmod`, `chgrp`, `chown`, `pathchk`, `mkfifo`, `link`, `unlink`, `file` |
| **time** | `date`, `crontab`, `at`, `batch`, `cal`, `time` |
| **process** | `ps`, `kill`, `nice`, `renice`, `nohup`, `env`, `xargs`, `fuser` |
| **the languages** | `expr`, `test`, `sed`, `bc`, `m4`, `awk` |
| **terminal** | `stty`, `tput`, `tabs`, `clear`\* |
| **archive** | `pax`, `compress`, `uncompress`, `zcat` |
| **compare** | `diff`, `patch` |
| **misc** | `ed`, `printf`, `logger`, `who`, `newgrp`, `nm`, `ar`, `strip`, `asa`, `uudecode`, `uuencode`, `man` |

\* `rev` and `clear` are **extensions**, not in POSIX, included because they
are two-line programs everybody expects. C-2 requires them to be listed as
extensions.

**Rule C-9 — `printf` the utility is built even though the language has no
`printf`.** D-053 removed format specifiers from Nitpick, and this is not a
contradiction: the utility parses its own `%` grammar at run time, exactly as
`date` does for `+%Y` (`PLAYBOOK.md` A-8, `ntime` TM-104). **The application
owns compatibility; the library stays principled.** It is worth saying out loud
because it is the clearest possible case of the rule.

---

## 4. Ordering

**Rule C-10 — the shared runtime first, then breadth, then depth.** The
trivial group exists to exercise `src/posix/` against a dozen real programs
before anything hard is written; the text tools broaden it; the languages come
last because each is a cycle and because by then the runtime has stopped
moving.

**Rule C-11 — the dogfood utilities are scheduled where their library needs
them**, not where this plan would otherwise put them: `grep` at cycle 0.5 for
`nregex`, `date` and `crontab` at 0.7 for `ntime`. Those cycles are gated on
the library, and the library's cycle is gated on the program.

---

## 5. Open items

- **O-C1 — the catalogue check** (C-3). Cycle 0.0.1. Not a design question; a
  verification that this document is true.
- **O-C2 — `iconv`.** Out at 1.0 (C-7) and the strongest candidate to return.
  Its home may be `nitpick-libs` rather than here: a transcoder is a library
  with a CLI on top, and the tables belong beside `ntui`'s and `nregex`'s.
  **Recommendation:** decide when a consumer appears, not before.
- **O-C3 — `ps` and `who` need process and utmp data.** `ps` reads `/proc`,
  which is Linux-specific and fine; `who` reads `utmp`, a binary format with no
  standard layout and a security history. **Recommendation:** `ps` in, `who`
  deferred to its own decision with the format hazard stated.
