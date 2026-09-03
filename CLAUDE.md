# CLAUDE.md

Guidance for Claude Code sessions in this repository.

## What this is

## Before starting a session here

Check **[`../../nitpick-libs/BOARD.md`](../../nitpick-libs/BOARD.md)** — it says whether this repository
is claimed by a stream, and by which. **One writer per repository, always.**
[`../../nitpick-libs/WORKSTREAMS.md`](../../nitpick-libs/WORKSTREAMS.md) is the dependency graph and the
stream partition: what gates this repository, what this repository gates, and
what to do when a cross-stream gate is not ready yet.

The POSIX utility set in Nitpick — **many programs from one tree**. Status:
**planning**. No code yet.

## Read first, in order

1. `../../nitpick-libs/PLAYBOOK.md` — the language constraints, the house rules
2. `../PLAYBOOK.md` — what is different about an application
3. `meta/specs/SCOPE.md` — which utilities and why; the most-argued document
4. `meta/specs/SAFETY.md` — the sixty-`failsafe` problem and the macro
5. `meta/DECISIONS.md`, then `meta/roadmap/ROADMAP.md`

## The four things unique to here

- **`failsafe` is a sixty-fold problem** and the answer is a macro. If cycle
  0.0's probe 02 shows a macro cannot splice a `pick` into a function body,
  **stop** — the repository's shape changes and the fallback is written down
  rather than improvised.
- **The system's utilities are a reference implementation**, already installed.
  Differential testing is the oracle — and it is not a conformance proof,
  because the reference is non-conformant in known ways.
- **`SIGPIPE` stays at default**, unlike `ntui` (blocks it) and `nsockets`
  (`MSG_NOSIGNAL`). `yes | head` works because `yes` dies.
- **This is where error budgets are paid.** `grep` owes one arm beyond the
  system set because `nregex` declares one identity.

## Non-negotiable

- A utility in neither `SCOPE.md`'s catalogue nor `CONFORMANCE.md`'s departures
  fails the build.
- Anything two utilities need lives in `src/posix/`.
- No input-derived multiply outside `src/posix/num.npk`.
- No `isatty` branch, no locale, no utility spawning another.
- Never work around a compiler defect — record it, stop, raise it.
