# Open questions

`O-x` is ours, `O-N` is the compiler's, `Q-` is for the project's author. A
question that gets answered moves to `DECISIONS.md` as a numbered decision and
is **struck through here with its number, never deleted** — the question is
part of the record of how the answer was reached.

---

## Q — for the author

### Q-1 — `awk`: this repository, or its own?
`awk` is a complete programming language — a grammar, a value model, its own
regular expressions, dynamic typing, associative arrays — and PX-008 keeps it
here with its own cycle. It is also the largest single thing in the plan, and
the argument that put `sh` and `vi` in their own repositories (PX-004) applies
to it with only slightly less force.

**Recommendation: keep it here**, because unlike `sh` and `vi` it is a *filter*
— it reads standard input and writes standard output, it composes in pipelines,
and it shares the entire utility runtime. `sh` and `vi` share almost none of
it. Revisit if its cycle grows past the rest of the plan combined.

### Q-2 — the reference implementation to pin for differential testing
GNU coreutils is what is installed and what most users compare against;
BusyBox is smaller and closer to the standard in places; neither is
conformant.

**Recommendation: GNU coreutils as the default**, because it is what a user
will diff against when they report a bug, with `--reference=busybox` supported
from the start so the disagreements are discoverable. The version is recorded
in every run (PX-021).

### Q-3 — how far to take `pax`
`pax` is the standard's archiver and it is genuinely large: two archive formats
(ustar and cpio), four modes, and an interchange format nobody uses. `tar` is
not in POSIX at all.

**Recommendation: ustar read and write, list and extract and create; the cpio
formats and the `-s` rewrite rules deferred.** Recorded as a departure. It is
the subset that makes `pax` useful and it is about a fifth of the work.

### Q-4 — a `nitpick-posix` release before the libraries reach 1.0?
The utilities that consume no library — most of them — could ship long before
`nregex` or `ntime` are finished.

**Recommendation: yes, and version it independently.** A 0.1 with forty working
utilities is worth more than a 1.0 that waits on `awk`. The utilities that
consume a library arrive when it does, which is what `SCOPE.md` C-11's gating
already says.

---

## O-N — the compiler's

### O-N5 — `npkg` cannot build more than one artifact
The manifest schema has one `[build] entry` and one `output`; this tree has
sixty entry points. The harness works around it (`BUILD.md` B-1).
**Ask:** a `[[bin]]` array, which is what every other language's build tool
converged on. Lower priority than O-N2.

### O-N2 — `[dependencies]` resolves to nothing
Inherited from the library workbench: the loader's dependency-root list is
created empty and never populated, so `grep`'s import of `nregex` is a relative
path. Same workaround, same request.

### ~~O-N6 — a macro's ability to splice a `pick` into a function body~~ — **ANSWERED by probe 02, PX-100**
**It cannot, and more decisively, a macro cannot be shared between modules at
all** (`NITPICK-MACRO-007`). `failsafe` is generated instead. The full chain of
seven probes is in `meta/roadmap/0.0/0.0.0.md` §6.

### O-N7 — the reachability walk reads only the top level of `failsafe`'s body
**Raised by probe 02e**, which is a **hand-written** `pick` wrapped in a bare
block — no macro anywhere — refused `NITPICK-REACH-001`. `reach.npk` says it
plainly: *"Find the ONE top-level pick over the parameter in failsafe's body."*

This is defensible as written — one obvious `pick`, no hunting — and this
repository does not need it changed. It is recorded because the **diagnostic**
does not say it. `REACH-001` reports that `failsafe` has no `pick` over its
parameter when a `pick` is right there, one block down, and a reader whose
handler is inside an `if` will lose an afternoon.

**Ask:** not a behaviour change — a **sentence in the diagnostic**. When the
body contains a `pick` over the parameter at any depth, say so: *"a `pick` over
`e` was found inside a nested block; it must be at the top level of
`failsafe`'s body."* The information is already in hand at the point of
refusal.

---

## O-x — ours

- **O-C1 — the catalogue check.** `SCOPE.md`'s table was assembled from
  knowledge, and a normative list assembled from knowledge is 95% right and
  wrong where it matters. Cycle 0.0.1 checks it against the standard's own
  table of contents and amends the document. **Open by design: it is a
  verification, not a preference.**
- **O-C2 — `iconv`.** Deferred at 1.0 (PX-007) and the strongest candidate to
  return. Its home may be `nitpick-libs`. **Recommendation:** decide when a
  consumer appears.
- **O-C3 — `who` and `utmp`.** `utmp` is a binary format with no standard
  layout and a security history. `ps` reads `/proc` and is fine.
  **Recommendation:** `ps` in, `who` deferred with the hazard stated.
- **O-S1 — is the error budget two rather than three?** `EPosixOutput` may not
  earn its place: a failed write is a forwarded errno in almost every case.
  Settled at cycle 0.1 against evidence.
- **O-B1 — the multi-call binary.** Not designed in advance (PX-014); the
  cycle-0.1 size spike decides whether it is needed at all.
- **O-T1 — `echo`'s backslash behaviour.** POSIX `echo` is famously
  under-specified; implementations differ on `-n` and `\c`. This is one of the
  few places where "what the standard says" genuinely does not decide.
  **Recommendation:** follow the XSI behaviour (interpret escapes, no `-n`),
  document it loudly, and provide `printf` as the answer for anyone who needs
  certainty — which is what the standard itself recommends.
