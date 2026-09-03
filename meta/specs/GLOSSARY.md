# Glossary

| Term | Means, here |
|---|---|
| **utility** | one program in `src/util/<name>/`, with its own `main` and `failsafe` |
| **the shared runtime** | `src/posix/` — argument parsing, exit statuses, diagnostics, stream helpers. Every utility is built on it and it knows about none of them |
| **operand** | a non-option argument. Never "positional argument" |
| **option-argument** | the value an option takes. Never "option value" |
| **the guidelines** | POSIX.1-2017 XBD §12.2, the Utility Syntax Guidelines |
| **the standard** | POSIX.1-2017 (IEEE 1003.1-2017), XCU volume unless another is named |
| **the reference** | the system's own implementation of a utility, used by the differential suite. Named and version-pinned per run; never called "the correct one" |
| **conformance case** | a case derived from the standard's text, carrying the citation |
| **differential case** | a case run against the reference, carrying no citation because the reference is the citation |
| **departure** | something this implementation does that the standard does not describe, listed in `CONFORMANCE.md` |
| **extension** | a utility or option present here and absent from the standard |
| **the catalogue** | `SCOPE.md` §3's table of what is built |
| **the C locale** | the POSIX locale: byte collation, ASCII case, no `LC_*`. The only one |
| **incomplete last line** | a final line with no terminating newline. Handled explicitly by every line-oriented utility |

## Words deliberately not used

| Not used | Because |
|---|---|
| "coreutils" | that is GNU's package. This is a POSIX utility set, and the difference is the whole of `CONFORMANCE.md` |
| "flag" for an option | `flag` is a family of *types* in this language (D-230) |
| "correct output" for the reference's | the reference is non-conformant in known ways; it is "the reference's output" |
| "port" | nothing here is ported. The prototype's utilities are an oracle |
| "script" | these are programs, and the cases run argv rather than a shell |
