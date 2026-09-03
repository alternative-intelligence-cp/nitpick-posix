# Building

Sixty artifacts from one tree, with tooling that cannot yet express that.

---

## 1. What the tooling cannot do

`../../../nitpick-libs/PLAYBOOK.md` §6 has the general statement. Two things
bite harder here than in a library:

- **`npkg` builds one artifact.** The manifest schema has one `[build] entry`
  and one `output`. This tree has sixty entry points. Recorded as **O-N5**: a
  request for a multi-artifact form, most naturally `[[bin]]` entries in the
  manifest, which is also what every other language's build tool converged on.
- **`[dependencies]` resolves to nothing**, so `grep`'s import of `nregex` and
  `date`'s of `ntime` are relative paths — `../../../../nitpick-libs/nitpick-regex/src/lib.npk`
  — with a comment at each site naming O-N2.

**Rule B-1 — `harness/` builds each utility from `src/util/<name>/main.npk`**
and the manifest's `[build]` names one of them because the schema demands it.
Nothing reads it. That is recorded here rather than worked around silently.

---

## 2. The build

```
src/posix/*.npk         → compiled once, into every utility
src/util/<name>/*.npk   → npkc → llc → undefined-symbol scan → ld.lld → build/<name>
```

**Rule B-2 — every artifact gets the undefined-symbol scan**, not just one. It
is what makes "no C, ever" structural, and sixty artifacts is sixty chances for
a stray symbol.

**Rule B-3 — the shared runtime is compiled per utility, not linked once.**
The language has no shared-library mechanism and the link is closed-world by
design (D-206). Each utility is statically complete, which is what makes it
copyable to a machine with nothing on it — and is the property the whole
project is for.

**Rule B-4 — a utility's build is independent**, so the harness builds only
what changed, and `--only wc` is a one-utility loop. With sixty artifacts this
is the difference between a usable development cycle and a coffee break.

---

## 3. Size

**Rule B-5 — the artifact size is measured and tracked from cycle 0.1**, per
utility, in `meta/bench/`. Sixty statically linked binaries each carrying the
runtime floor and the shared runtime is the obvious objection to this design,
and the answer is a number rather than a shrug. If `true` is 900 KB, that is
worth knowing early, and the mitigations — a smaller floor, or a multi-call
binary in the BusyBox shape — are decisions to take with the measurement in
hand.

**Rule B-6 — the multi-call form is not designed in advance.** BusyBox links
every utility into one binary and dispatches on `argv[0]`. It is the right
answer if B-5's numbers are bad and a needless complication if they are fine.
The plan measures first (cycle 0.1's spike) and decides then.
