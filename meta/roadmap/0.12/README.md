# Cycle 0.12 — Terminal, archive, compare

`stty`, `tput`, `tabs`; `pax`, `compress`, `uncompress`, `zcat`; `diff`, `patch`; `ed`.

## Decisions in

PX-002.

**Open questions to settle:** Q-3 — how far to take `pax`.

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

`pax` round-tripping a ustar archive it created, and `diff` output applying cleanly through `patch`.

## Watch for

- **`pax` is scoped by Q-3 and the scope is a fifth of the work. Do not let it grow silently.
