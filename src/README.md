# `src/`

`posix/` is the shared runtime every utility is built on — argument parsing to
the Utility Syntax Guidelines, exit statuses, diagnostics, stream helpers, the
`-` convention. `util/<name>/` is one directory per utility.

The split is load-bearing: what these programs have in common is far larger
than what they differ by, and `posix/` is the only reason one repository beats
a hundred and sixty.
