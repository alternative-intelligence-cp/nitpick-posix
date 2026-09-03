# Cycle 0.2 — The trivial set

Twelve programs with almost no logic, whose purpose is to exercise the runtime against real usage while changing it is still cheap.

## Decisions in

PX-002's catalogue.

**Open questions to settle:** O-T1 — `echo`'s backslash behaviour, the one place the standard genuinely does not decide.

## Subcycles

Written execution-grade at cycle the previous one's
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

Twelve utilities, each with conformance and differential cases, and the runtime unchanged for the last three of them — which is the evidence that it is done.

## Watch for

- **`echo` will take longer than the other eleven combined, and that is correct — it is the one with a real decision in it.
