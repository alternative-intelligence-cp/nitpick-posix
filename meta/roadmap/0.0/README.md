# Cycle 0.0 — Foundations

**The probes, the catalogue check, and the harness.** Nothing here implements a
utility. What it produces is the answer to whether this repository's shape
works, a catalogue that is true, and the machinery every later cycle is tested
by.

## Why this shape

**One probe gates the whole repository.** PX-010 makes `failsafe` a macro,
because sixty hand-written exhaustive `pick`s is twelve hundred lines that must
stay in sync. Nothing in the compiler's own tree demonstrates a macro splicing
a `pick` into a function body. If it cannot, the repository's shape changes —
and finding that out on day one costs a day, where finding it out at cycle 0.6
costs the plan.

**The catalogue is a normative list assembled from knowledge**, which is the
kind of thing that is 95% right and wrong in the places that matter. 0.0.1
checks it against the standard's own table of contents and amends `SCOPE.md`.

## Decisions in

PX-001 … PX-013, PX-020 … PX-023. All settled. **Nothing here is blocked on a
question**; Q-1 … Q-4 are open and none of them gates this cycle.

## Subcycles

| # | Topic | Ends with |
|---|---|---|
| 0.0.0 | **The probes** — nine programs asking whether the shape is spellable | a verdict each, and any design change they force |
| 0.0.1 | **The catalogue check** — `SCOPE.md` against the standard's contents | a catalogue that is true, and `CONFORMANCE.md`'s departure list seeded |
| 0.0.2 | **The harness, part 1** — build one utility, the `unit` and `conformance` stages | one utility built and one case judged |
| 0.0.3 | **The harness, part 2** — the `differential` stage, the self-check, the tree checks | the self-check proves it can fail, six ways |
| 0.0.4 | **Close** | `done/0.0/`, `0.1.0.md` written |

## Checklist

### 0.0.0 — the probes
- [ ] `probe/01_argv.npk` — `cstring[]:argv` read, an operand converted to a `string`, the borrow rules exercised at every edge (it is the kernel's memory and outlives the program)
- [ ] **`probe/02_failsafe_macro.npk` — a `failsafe` whose entire body is `#posix_failsafe(e)`, expanding to an exhaustive `pick`, compiled, and reached by a deliberate trap.** The one that gates the repository
- [ ] `probe/02b_failsafe_macro_extend.npk` — `#posix_failsafe_with(e, EOne, ETwo)`: the shared arms plus named extras (S-4)
- [ ] `probe/03_shared_module.npk` — one module compiled into two artifacts, each statically complete, both passing the undefined-symbol scan
- [ ] `probe/04_exit_status.npk` — `exit` from `main` and from `failsafe`, and the status observed by the parent
- [ ] `probe/05_sigpipe.npk` — **write to a pipe whose reader has exited; the process must die of signal 13** (PX-011). The inverse of `ntui`'s T-113 test, and the evidence that default disposition is what it is
- [ ] `probe/06_num_overflow.npk` — two programs: `acc * 10 + d` over a 25-digit string **expected to trap**, and the checked helper expected to exit 0
- [ ] `probe/07_openat.npk` — `openat` with `O_NOFOLLOW`, a directory descriptor kept across a walk, and a symlink refused
- [ ] `probe/08_getdents.npk` — a directory read through `getdents64`, with a filename containing invalid UTF-8 surviving unchanged
- [ ] `probe/09_stdin_once.npk` — `-` as an operand twice (G-19): opened once, exhausted the second time
- [ ] a verdict per probe recorded in `0.0.0.md`, with the exact diagnostic where refused
- [ ] **if probe 02 fails**: stop, record, and take the fallback decision (a generated `failsafe` per utility) explicitly rather than improvising

### 0.0.1 — the catalogue check
- [ ] `SCOPE.md` §3's table diffed against POSIX.1-2017 XCU's table of contents, utility by utility
- [ ] every utility in the standard and absent from the table placed in an exclusion class with a reason, or added
- [ ] every utility in the table and absent from the standard marked an extension
- [ ] `CONFORMANCE.md` §2's counts made real rather than approximate
- [ ] `SCOPE.md` amended and the decision recorded — **the document changes, not the standard**
- [ ] `tools/catalogue.toml` as the machine-readable form, and `check_catalogue` reading it

### 0.0.2 — the harness, part 1
- [ ] `harness/run.py`: the manifest, the toolchain pin, the per-utility build
- [ ] the build pipeline per utility — `npkc` → `llc` → undefined-symbol scan → `ld.lld`
- [ ] `--only <utility>` builds and tests exactly one (B-4)
- [ ] the `unit` stage over `src/posix/`
- [ ] the `conformance` stage: the case-directory format (V-7), `cmd` as argv with **no shell**, byte-exact `stdout`, the `spec` citation required
- [ ] one real conformance case green

### 0.0.3 — the harness, part 2
- [ ] the `differential` stage: run ours and the reference, compare stdout, stderr shape and status
- [ ] the reference named and version-recorded in every run (PX-021); `--reference=busybox` supported
- [ ] the stage **skipped loudly** when the reference is absent, naming the binary
- [ ] `harness/selfcheck.py`, six cases: a wrong `expect-exit`; a byte-different stdout; a conformance case with no `spec` file; a `cmd` that is a shell invocation; a differential case where the reference is missing (must skip, not pass); a catalogue entry with no utility
- [ ] the self-check runs **first**
- [ ] tree checks live: `check_catalogue`, `check_no_shell`, `check_locale_free`, `check_no_isatty` — the last three over an empty set, which is the right answer and not a reason to skip

### 0.0.4 — close
- [ ] every probe verdict recorded and every consequence landed in the specs
- [ ] the catalogue true, `check_catalogue` green
- [ ] a full harness run green
- [ ] `0.1/0.1.0.md` written execution-grade
- [ ] archived to `done/0.0/`

## Gate

**Probe 02 green, the catalogue checked against the standard, and a self-check
that fails six ways.** If probe 02 is red the cycle still completes — with the
fallback decided and recorded — but the plan changes shape and 0.1 is replanned
before it opens.

## Watch for

- **Probe 02 is not a formality.** Read `MACRO_REFERENCE.md` properly first;
  the expansion positions are specified and a statement-position `pick` is the
  shape that is not demonstrated anywhere.
- **The catalogue check will find errors.** That is what it is for. Amend the
  document and record it; do not quietly fix the table.
- **`argv` is the kernel's memory** and outlives the program, which is why
  `Args` can hold views into it (G-13) — but the borrow rules still apply to
  what is derived from it, and probe 01 maps the edges.
- **`test` and `true` are reserved-word hazards as filenames**, not as
  identifiers: `src/util/test/` is fine, a Nitpick module named `test` is fine,
  but a local called `in`, `end` or `limit` is not.
