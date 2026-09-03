# `nitpick-posix` specifications

The authority on what this repository builds and how it behaves. Code that
disagrees with a document here is a defect in the code; a document that turns
out to be wrong is amended by a decision in
[`../DECISIONS.md`](../DECISIONS.md), never by editing the text and moving on.

> **Read `../../PLAYBOOK.md` and `../../../nitpick-libs/PLAYBOOK.md` first.**
> The application playbook covers what is different about a program; the
> library playbook covers the language constraints, the specs-first order, the
> repository conventions and the testing rules that both inherit. These
> documents are the delta for this repository, and they assume both.

## Reading order

| # | Document | What it settles |
|---|---|---|
| 1 | [`SCOPE.md`](SCOPE.md) | **which utilities, and why** — the central document, and the one most likely to be argued with |
| 2 | [`SAFETY.md`](SAFETY.md) | sixty `failsafe` handlers and the macro that writes them; the error budget inverted; `SIGPIPE` at default |
| 3 | [`ARGUMENTS.md`](ARGUMENTS.md) | the Utility Syntax Guidelines, as implementable rules |
| 4 | [`UTILITY_MODEL.md`](UTILITY_MODEL.md) | the shape of every program: streams, diagnostics, text, exit status |
| 5 | [`FILESYSTEM.md`](FILESYSTEM.md) | paths, traversal, permissions, and the symlink hazard |
| 6 | [`TESTING.md`](TESTING.md) | differential testing against the system's own utilities, and where it is not enough |
| 7 | [`CONFORMANCE.md`](CONFORMANCE.md) | what is claimed, what is absent, and every departure |
| 8 | [`BUILD.md`](BUILD.md) | sixty artifacts from one tree, and the tooling that cannot do it yet |
| 9 | [`VERIFICATION.md`](VERIFICATION.md) | the obligations carried into the compiler's cycle 1.5 |
| 10 | [`GLOSSARY.md`](GLOSSARY.md) | the words, used one way each |

## What is normative

A **rule** (`C-1`, `S-7`, `G-14`, …) is normative and reads as a statement of
fact. A **rationale** paragraph carries no obligation. `PX-nnn` cites
[`../DECISIONS.md`](../DECISIONS.md); `D-nnn` cites the **compiler's**
decisions and is never ours to amend; a library's prefix (`RX-`, `TM-`, …)
cites that library's.

## The three things that make this repository unlike the libraries

1. **It builds many programs from one tree**, so `failsafe` is a sixty-fold
   problem and the answer is a macro (`SAFETY.md` §2). This is the ecosystem's
   first real macro consumer, and cycle 0.0 verifies the mechanism before
   anything is built on it.
2. **A reference implementation is already installed.** Differential testing
   against the system's own utilities is a stronger oracle than any
   hand-written expectation — and it is *not* a conformance proof, because the
   reference is itself non-conformant in known ways (`TESTING.md` §1).
3. **It is where the error budgets are paid.** A library spends somebody's
   `failsafe` arms; an application pays them, and `SAFETY.md` §3 is the
   arithmetic.
