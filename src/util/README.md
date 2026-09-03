# `src/util/` — one directory per utility

`<name>/main.npk` is the entry point the harness builds. A utility that is
large enough to want several modules keeps them in its own directory; nothing
in one utility is imported by another. Anything two utilities need belongs in
`../posix/`.
