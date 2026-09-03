# Cycle 0.1 — The shared runtime

`src/posix/` — the thing that makes one repository beat a hundred and sixty.

## Decisions in

PX-012, PX-013, and `ARGUMENTS.md`/`UTILITY_MODEL.md` in full.

**Open questions to settle:** O-S1 (is the budget two rather than three?) and O-B1 (does the size spike bring back the multi-call form?).

## Subcycles

Written execution-grade at cycle 0.0's
close, per the ecosystem convention — by the session that has just learned what
the previous cycle taught.

## Checklist

- [ ] every utility in this cycle has its `OptSpec` table before its code
      (`ARGUMENTS.md` G-11) and its generated synopsis checked against it (G-17)
- [ ] every utility's `failsafe` is the **generated** file, unedited — `check_failsafe_current` regenerates and diffs (PX-100)
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

`true` builds, runs, exits 0 — and the size spike's number is recorded with its pre-decided thresholds.

## Watch for

- **This runtime is used by sixty programs, so a defect here is sixty defects. It is the one place in the repository worth over-testing.
- **`num.npk` is the security boundary.** Every input-derived multiply in the repository happens there or the build fails.
