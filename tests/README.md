# `tests/`

| Directory | Stage | Contents |
|---|---|---|
| `probe/` | `program` | cycle-0.0 language probes; never deleted |
| `unit/` | `program` | behaviour of `src/posix/`, judged by exit code |
| `conformance/` | `conformance` | per-utility cases derived from the standard text |
| `differential/` | `differential` | the same input to ours and to the system utility, outputs compared |
| `fixtures/` | — | inputs and expected outputs, byte-stable and committed |

Governed by `../meta/specs/TESTING.md`.
