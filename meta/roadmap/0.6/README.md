# Cycle 0.6 — Filesystem

The cycle with the security surface. `FILESYSTEM.md` is entirely about this one.

## Decisions in

`FILESYSTEM.md` in full, `SAFETY.md` S-10 and S-11.

**Open questions to settle:** O-C3 — `who` and `utmp`.

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

A traversal suite over a tree containing a symlink loop, a 40 000-deep path, and a filename that is not valid UTF-8 — terminating, diagnosing, and damaging nothing.

## Watch for

- **TOCTOU and symlinks account for most of the security history of a utility set. Act and handle the failure; never check then act.
