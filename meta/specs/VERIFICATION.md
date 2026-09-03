# Verification obligations

The compiler's cycle 1.5 makes `prove`, contracts and `limit<Rules>` real, and
its orchestration rule R9 requires every branch to record its obligations so
they can be collected. This is this repository's list.

**Rule Z-1.** Until a construct is live, its obligation is a **comment beside
the code in the exact syntax it will take**, with a property test standing in.
The compiler's rungs refuse the constructs by name today, so a premature
`ensures` is a build failure rather than a silent no-op.

---

## 1. What the language discharges for free

Most of it, and it is why the residue is small: bounds-checked indexing,
trapping overflow, trapping division by zero, non-escaping borrows, move-only
owners, `Result<T>` everywhere. What remains is the arithmetic this repository
does on numbers somebody else chose.

## 2. The shared runtime carries almost all of it

**Rule Z-2.** `src/posix/` is the only place worth proving, because sixty
utilities call it and nothing else is shared. One discharged obligation there
is sixty sites made safe.

| Site | Obligation |
|---|---|
| `num_parse_int` | `requires` the string is non-empty; `ensures` the result is in the requested range or the call failed — **the S-9 accumulator, proven rather than checked** |
| `num_mul_checked` | `ensures` no overflow on the continuing path |
| `args_parse` | `ensures` every returned operand index is `< argv.len` |
| `args_value` | `requires` the option is in the spec table |
| line reader | `ensures` the returned span lies within the buffer; the loop's variant is bytes remaining |
| `posix_open_operand` | `ensures` standard input is opened at most once (G-19) |
| the write-all loop | `ensures` bytes written equals bytes offered, or the call failed; variant is bytes remaining |
| the traversal stack | `ensures` depth never exceeds the stated limit (S-10) |

## 3. Per-utility

**Rule Z-3.** A utility carries an obligation only where its own arithmetic is
non-trivial: `dd`'s block arithmetic, `od`'s offset and radix conversion,
`fold` and `expand`'s column accounting, `sort`'s key ranges, `split`'s suffix
generation. Each is a small, bounded computation over user-supplied numbers,
which is exactly the shape Z3 is good at.

**Rule Z-4 — every utility carries one obligation regardless**: that its
`exit` statuses are within its documented set. That is `check_exit_documented`
today (TESTING.md V-11) and a contract when contracts land.

## 4. What cannot be proven

**Rule Z-5.** The kernel, the filesystem's behaviour under concurrent
modification, and the reference implementation the differential suite compares
against. The claim is about this repository's own arithmetic and its resource
discipline, and the residue is enumerated rather than mitigated — the compiler's
`TCB.md` doctrine.
