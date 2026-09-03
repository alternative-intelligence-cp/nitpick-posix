# Cycle 0.11 — `awk`

The largest cycle in the plan: a grammar, a value model, its own regular expressions, and the natural large consumer for both `nparse` and `nregex`.

## Decisions in

PX-008.

**Open questions to settle:** Q-1 — whether `awk` belongs in this repository at all.

## Subcycles

Written execution-grade at cycle the previous one's
close, per the ecosystem convention — by the session that has just learned what
the previous cycle taught.

## Checklist

- [ ] every utility in this cycle has its `OptSpec` table before its code
      (`ARGUMENTS.md` G-11) and its generated synopsis checked against it (G-17)
- [ ] every utility's `failsafe` is the macro, never a hand-written `pick`
      (`SAFETY.md` S-2)
- [ ] every utility has **conformance** cases carrying their citation and
      **differential** cases against the recorded reference (`TESTING.md` §§1–2)
- [ ] every numeric option exercised against the S-9 corpus — `0`, `1`, `-1`,
      `2^31-1`, `2^31`, `2^63-1`, `2^63`, `2^64`, forty digits, empty
- [ ] every documented exit status reachable by a case, and
      `check_exit_documented` green
- [ ] every departure from the standard or from GNU recorded in
      `CONFORMANCE.md` **in the commit that creates it**
- [ ] a failure on one operand does not stop the next (`UTILITY_MODEL.md` U-9)
- [ ] the incomplete last line handled explicitly (U-6)
- [ ] artifact sizes recorded (`BUILD.md` B-5)

## Gate

`awk` running the standard's own example programs, and the one-true-awk test suite where its licence permits.

## Watch for

- **This cycle is large enough to be its own repository (Q-1). If it grows past the rest of the plan combined, that question reopens.
