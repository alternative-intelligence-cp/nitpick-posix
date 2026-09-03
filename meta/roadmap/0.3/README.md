# Cycle 0.3 — Text streams I

`cat`, `head`, `tail`, `tee`, `wc`, `nl`, `fold`, `expand`, `unexpand`, `cut`, `paste`, `tr`.

## Decisions in

`UTILITY_MODEL.md` U-6 and U-11.

**Open questions to settle:** none.

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

Every utility green under both stages, and `wc -c`/`-m`/`-l` agreeing with the reference on a file with invalid UTF-8 and no trailing newline.

## Watch for

- **The byte-versus-character distinction is user-visible in `wc`, `cut`, `fold` and `expand`, and getting it inconsistent between them is the defect nobody notices until a script breaks.
