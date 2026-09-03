# `src/posix/` — the shared runtime

Argument parsing (`ARGUMENTS.md`), exit statuses, the diagnostic format, stream
helpers and the `-`-means-stdin convention. Every utility is built on it and
nothing here knows about any particular utility. Governed by
`../../meta/specs/UTILITY_MODEL.md`. Built in cycle 0.1.
