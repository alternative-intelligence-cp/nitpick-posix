# Design decisions

Every settled decision for `nitpick-posix`, with reasoning and the alternatives
declined. Cited as `PX-nnn` from the specifications. `D-nnn` is the
**compiler's** and is never ours to amend; `T-`, `PA-`, `RX-`, `SK-`, `TM-`
cite the libraries.

**A settled decision's text is never rewritten.** Supersede it with a new one
that says why.

---

## Scope

### PX-001 — one repository, a directory per utility
**2026-09-03.** Not one repository per utility, and not one binary.

What these programs share is far larger than what they differ by: argument
parsing to the Utility Syntax Guidelines, exit-status discipline, the
diagnostic format, the `-`-means-stdin convention, stream helpers, the locale
position, and one conformance suite against one standard. A hundred and sixty
repositories would duplicate all of it and leave the shared behaviour with
nowhere to live.

*Confirmed independently:* `ARCHIVE/nitpick-posix` is a single tree with a
directory per utility, reached by a different route.

*Alternative declined for now:* the BusyBox form — every utility linked into
one binary dispatching on `argv[0]`. It is the right answer **if** PX-014's
size measurement is bad and a needless complication if it is fine, so it is
measured before it is decided.

### PX-002 — the 1.0 is the intersection, not the standard
**2026-09-03.** Three lists exist: what POSIX.1-2017 XCU defines (~160), what
the prototype built (264 files, including GNU additions in no standard), and
the intersection of "in the standard" and "somebody runs it" (~60). **The third
is the 1.0.**

Every utility in the standard and not built is a stated departure; every
utility built and not in the standard is a stated extension; both lists are
derived from the build by `check_catalogue` rather than written by hand, so
they cannot drift in the direction that matters.

### PX-003 — the shell built-ins are excluded because they cannot be programs
**2026-09-03.** `cd`, `wait`, `read`, `umask`, `getopts` and a dozen more are
in XCU and are **not standalone programs**: `cd` in a child changes that
child's directory and exits. They belong to `sh`, which PX-004 excludes.

Listing them explicitly is the point — somebody will notice `cd` is missing.

### PX-004 — `sh`, `vi`, `ex` and `make` are their own projects
**2026-09-03.** Each is a language, an application or a build system in its own
right, and each is bigger than several of the utilities combined. Excluded from
*this repository*, not from the ecosystem: each is a candidate repository under
`nitpick-apps`, and **`vi` is the natural large consumer for `ntui`** after
that library's own dogfood cycle.

`ed` is **kept** — it is small, and it is `ex`/`vi` that are large.

### PX-005 — the C and Fortran toolchain is excluded
**2026-09-03.** `c99`, `fort77`, `lex`, `yacc`, `cflow`, `cxref`, `ctags`.
Building a C compiler inside a project whose premise is that it contains no C
is a joke that writes itself, and the ecosystem's build tool is `npkg`.

### PX-006 — SCCS, batch queues, UUCP, terminal chat and `lp` are excluded as dead
**2026-09-03.** Forty-odd utilities across five groups. "Dead" is a claim, made
explicitly so it can be contested: **if somebody produces a consumer, the
exclusion is amended.**

### PX-007 — no locale, so the locale machinery is excluded
**2026-09-03.** `locale`, `localedef`, `gencat` — the ecosystem has no locale
(`ntime` TM-024, `ntui`, and the text model everywhere), so `locale` would
print a configuration nothing reads.

`iconv` is the member with a real case and is **deferred, not dismissed**: a
transcoder is a table-generation project of its own shape, and its home may be
`nitpick-libs` rather than here, since a transcoder is a library with a CLI on
top. O-C2.

### PX-008 — the utilities that are languages are in scope, each with its own cycle
**2026-09-03.** `awk`, `sed`, `bc`, `m4`, `expr`, `test` are programming
languages wearing a utility's clothes. They are **not** excluded — `sed` and
`awk` are among the most-used utilities in the set — but planning them as
though they were `wc` is how they end up half-implemented.

`awk` has a complete grammar, its own value model and its own regular
expressions, is the natural large consumer for **both** `nparse` and `nregex`,
and its cycle is the largest in this plan.

---

## The program shape

### PX-010 — sixty `failsafe` handlers are written by a macro
**2026-09-03. The decision that shapes the repository.**

REACH-002 requires `failsafe`'s `pick` to name every reachable error, and the
check happens **in that function's own body** — so a shared helper discharges
nothing. Sixty utilities × ~20 arms is twelve hundred lines that must stay in
sync, and a utility that gains an import gains an arm in a file nobody is
looking at.

Macros are AST-native, hygienic and expanded before semantic analysis (D-057),
so `#posix_failsafe(e)` *is* the `pick` by the time the exhaustiveness check
runs. One definition, sixty call sites, and a new system error is one edit.

**This makes `nitpick-posix` the ecosystem's first real macro consumer**, and
cycle 0.0's probe 02 verifies the mechanism before anything is built on it. The
fallback — a generated file per utility, written by the harness and committed —
is worse in every way except certainty, and it is written down in the probe so
it is not improvised under pressure.

### PX-011 — `SIGPIPE` stays at its default disposition
**2026-09-03.** Not blocked (which `ntui` does, T-113) and not suppressed with
`MSG_NOSIGNAL` (which `nsockets` does, SK-013). **All three are right**, which
is why the playbook's rule is *know what the default is*, not *block it*.

`yes | head -5` works **because** `yes` dies of `SIGPIPE` when `head` exits. A
`yes` that survived a closed stdout would run until the machine did. The signal
is a pipeline's shutdown mechanism, the exit status 141 it produces is
meaningful and scripts read it, and a utility that swallowed it would break the
composition the whole set exists for.

*The consequence, accepted:* a utility may die mid-write with no cleanup. That
is fine because a utility holds no resource whose loss matters — which is
exactly the difference between it and a terminal program.

### PX-012 — options do not permute, and `POSIXLY_CORRECT` is not consulted
**2026-09-03.** `ls foo -l` treats `-l` as an operand, which is what the
standard says. GNU reorders `argv` unless that variable is set.

*Reasoning:* a utility whose argument meaning depends on an environment
variable behaves differently on two machines running the same script — the
class of failure this ecosystem refuses everywhere else, and the same argument
that removed terminfo (`ntui` T-003) and the system tzdb (`ntime` TM-007).

*The cost is real:* permuting is friendlier and people are used to it. It is
bought with non-determinism, and it is listed under "differs from what you are
used to" rather than under conformance, because we are the conformant one.

### PX-013 — the error budget is three, and everything else is a forwarded errno
**2026-09-03.** `EPosixUsage`, `EPosixInput`, `EPosixOutput`. A kernel errno
forwarded verbatim costs no `failsafe` arm, and a distinction the *caller*
wants rides as a field rather than an identity.

*The arithmetic that makes the libraries' budgets visible:* `true` owes the
system set alone; `grep` owes system + 1, because `nregex` declares one
identity; `date` owes system + 3. This repository is where every library's
budget is settled up, and it is the only place the payment is visible.

---

## Testing

### PX-020 — differential testing against the system's own utilities is the oracle
**2026-09-03.** For every utility and every case, run ours and the system's on
the same input and require the same stdout, the same stderr shape and the same
exit status.

This is the playbook's cross-implementation rule with the second
implementation supplied by the operating system. It is stronger than any
hand-written expectation: nobody has to know what `sort -k2,3 -t: -n` does on
mixed-width fields, because `sort` does.

**It is not a conformance proof**, and the specification says so where somebody
might assume otherwise: the reference is itself non-conformant in known ways,
and where GNU extends the standard, agreeing with GNU is *wrong*.

### PX-021 — the reference is named and version-pinned per run
**2026-09-03.** GNU coreutils and BusyBox disagree, and both disagree with the
standard in places. A differential result is meaningless without recording
which binary answered.

**A case where the two references disagree must have a spec-derived expectation
instead** — the disagreement is the signal that the standard is ambiguous
there, and it is exactly the case worth writing by hand.

### PX-022 — a conformance case carries its citation; a differential case does not
**2026-09-03.** A conformance case names the paragraph of the standard it is
derived from, in a `spec` file, and the harness requires it. A case with no
citation is a case somebody guessed at.

A differential case needs none, because the reference is the citation.

### PX-023 — no shell anywhere in the test suite
**2026-09-03.** A case is a directory whose `cmd` file is argv, one token per
line. Quoting cannot change what is tested, and a case cannot accidentally test
the shell instead of the utility.

---

## Build

### PX-014 — artifact size is measured from cycle 0.1, not argued about
**2026-09-03.** Sixty statically linked binaries each carrying the runtime
floor and the shared runtime is the obvious objection to PX-001, and the answer
is a number rather than a shrug.

The measurement is a cycle-0.1 **spike** with its thresholds decided in
advance, so a bad number produces a stop rather than an improvisation — the
instrument `ntime` established for the tzdb. If `true` is 900 KB, the
mitigations (a smaller floor, or PX-001's declined BusyBox form) are decisions
taken with the measurement in hand.
