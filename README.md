# nitpick-posix

The **POSIX utility set**, written in
**[Nitpick](https://github.com/alternative-intelligence-cp/nitpick)** — no
libc, no C, no external dependency in any artifact.

> **Status: scaffolded.** The repository exists, the scope question is
> recorded, and the planning pass has not been run. Nothing is implemented.
> When it runs it follows
> [`../PLAYBOOK.md`](https://github.com/alternative-intelligence-cp/nitpick-apps/blob/main/PLAYBOOK.md)
> and the library playbook it defers to: specifications first, then decisions,
> then a cycle map, then code.

## Why one repository

The utilities share far more than they differ by: argument parsing, the `--`
terminator, the `-`-means-stdin convention, exit-status discipline, the
diagnostic format, locale-free text handling, and a conformance suite measured
against one standard. A hundred and sixty repositories would duplicate all of
it and leave the shared behaviour with nowhere to live. The prototype reached
the same conclusion — `ARCHIVE/nitpick-posix` is a single tree with a directory
per utility.

## The scope question, recorded rather than assumed

"POSIX utilities" is three different lists and the planning pass has to pick:

- **POSIX.1-2017 XCU** — the ~160 utilities the standard actually defines.
- **What the prototype built** — `ARCHIVE/nitpick-posix` has 264 `.npk` files
  and includes GNU coreutils additions (`b2sum`, `base32`, `chcon`) that are
  not in POSIX at all.
- **What is worth having** — the intersection of "in the standard" and
  "somebody runs it", which is a much shorter list and is probably where a 1.0
  should stop.

The planning pass decides, states the list, and states what is deliberately
absent. A utility that is in the standard and not implemented is a stated
departure; a utility that is implemented and not in the standard is a stated
extension. Neither is a surprise.

## What it consumes

Each utility names its own libraries, and the registry entry in
[`../APPS.md`](https://github.com/alternative-intelligence-cp/nitpick-apps/blob/main/APPS.md)
is the summary. Known so far:

| Utility | Library | Note |
|---|---|---|
| `grep` | [`nregex`](https://github.com/alternative-intelligence-cp/nitpick-regex) | **and a stated conformance departure** — see below |
| `date` | [`ntime`](https://github.com/alternative-intelligence-cp/nitpick-time) | POSIX `+%Y` formatting is parsed here and mapped onto `ntime`'s typed layout; the library has no format-specifier language and does not need one |

### The `grep` departure, known before a line is written

POSIX **basic** regular expressions include back-references (`\(…\)` … `\1`),
and `nregex` has none — by decision, because back-references are what force a
backtracking engine, and catastrophic backtracking is a denial of service
triggered by input somebody else controls.

`grep` is the tool most likely in the entire set to be pointed at hostile
input. Adding a backtracking engine to it, to satisfy a conformance checkbox,
would put the exact failure the regex library was designed to eliminate into
the one program that most needs it eliminated. So:

**a back-reference is refused, by name, with the reason and the byte offset —
never silently accepted and never quietly reinterpreted.** It is a documented
conformance departure, it is the same choice `ripgrep` makes, and it is
recorded here rather than discovered later.

## Licence

Apache 2.0. See [`LICENSE`](LICENSE).
