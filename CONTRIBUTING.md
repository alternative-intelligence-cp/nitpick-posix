# Contributing

Read, in order: `../../nitpick-libs/PLAYBOOK.md` (the language constraints and
the house rules), `../PLAYBOOK.md` (what is different about a program), then
`meta/specs/README.md`.

## Before adding a utility

1. **It must be in `SCOPE.md`'s catalogue**, or the commit that adds it amends
   the catalogue and says why. `check_catalogue` enforces this.
2. **Write its specification first** — its options, its operands, its exit
   statuses, its departures. The synopsis is generated from the `OptSpec`
   table, so the table comes before the code.
3. **Its `failsafe` is the macro** (`SAFETY.md` S-2). A hand-written `pick`
   fails `check_failsafe_macro`.
4. **Anything two utilities need goes in `src/posix/`.** A helper copied into a
   second utility is the thing this repository exists to prevent.

## The three that catch people

- **An input-derived multiply goes through `src/posix/num.npk`.** `acc * 10 + d`
  written inline traps on a long number, which is a denial of service, and
  `check_no_raw_accumulate` will fail the build.
- **`SIGPIPE` stays at its default.** `yes | head` works *because* `yes` dies.
  Do not block it, do not handle it, do not report it.
- **A failure on one operand does not stop the next.** `cat a missing b` prints
  both files, reports the failure, and exits non-zero at the end.

## Tests

Every utility needs conformance cases (from the standard's text, with the
citation) and differential cases (against the system's own). Where the two
disagree, **the standard wins and the divergence goes in `CONFORMANCE.md`** —
that row is then a deliberate feature, tested on purpose.
