# Arguments

The POSIX Utility Syntax Guidelines, implemented once in `src/posix/args.npk`
and used by every utility. This is the largest single thing the repository
shares and the main reason one tree beats a hundred and sixty.

---

## 1. The guidelines, as rules

POSIX.1-2017 XBD §12.2 states twelve guidelines. They are reproduced here as
implementable rules, in the order they bite.

**Rule G-1.** A utility name is 2–9 characters, lowercase, from the portable
character set. Ours are the standard's names, so this constrains only
extensions.

**Rule G-2.** An option is a `-` followed by **one** alphanumeric character.
`-abc` is three options, not one named `abc`. Long options are **not** POSIX
and §4 says what happens to them.

**Rule G-3.** Options without arguments group: `-abc` ≡ `-a -b -c`.

**Rule G-4.** An option with an argument takes it as the **rest of that
argument if any**, otherwise as the next argument: `-oFILE` and `-o FILE` are
the same. Consequently a grouped run ends at the first option that takes one:
in `-abo FILE`, `-o` takes `FILE`.

**Rule G-5.** An option's argument is not optional. `-o` with nothing after it
is a usage error, never a defaulted value. **This is the guideline most
frequently violated in practice** and the one that makes parsing decidable.

**Rule G-6.** Options precede operands. What follows the first operand is an
operand, even if it begins with `-`. §3 is the exception every real
implementation has.

**Rule G-7.** `--` terminates options. Everything after it is an operand,
including something spelled `-x`.

**Rule G-8.** `-` alone is an **operand**, conventionally meaning standard
input, and is never an option. §5.

**Rule G-9.** Option order is not significant unless the utility says
otherwise; a repeated option takes its last value unless the utility says
otherwise. Both exceptions exist — `grep -e` accumulates — so the parser
supports accumulation and the utility declares which of its options do it.

**Rule G-10.** An argument list is `utility [options] [--] [operands]`, and the
parse produces exactly that shape or a usage error.

---

## 2. The parser

```nitpick
pub struct:OptSpec = { char8:name; ArgKind:takes; bool:repeats; };
pub enum:ArgKind = { None; Required; };

pub struct:Args = { … };   // opaque; the accessors are the API

args_parse(spec[], argv) -> Result<Args>
args_present(a, 'x')      -> bool
args_count(a, 'x')        -> uint32          // for `-vvv`
args_value(a, 'x')        -> string?         // last, or NIL
args_values(a, 'x')       -> string[]        // all, in order, for accumulating options
args_operands(a)          -> string[]
```

**Rule G-11.** The spec is **data**, declared per utility as a constant array,
not code. A parser driven by a table can be checked against the utility's
documented synopsis by a harness check; a parser written as a `while` over
`argv` in each utility cannot.

**Rule G-12.** `args_parse` fails `EPosixUsage` and **nothing else**. An
unknown option, a missing option-argument, an operand count outside the
utility's declared range — all of them are the same error, which the caller
turns into the usage message and exit status 2.

**Rule G-13.** The parse allocates once and borrows the rest. `argv` is a
`cstring[]` the kernel owns and it outlives the program; `Args` holds slices
into it rather than copies, which is why `args_value` returns a view and why
that view is valid for the life of `main`.

---

## 3. Where real implementations depart from G-6

**Rule G-14 — options do not permute, and `POSIXLY_CORRECT` is not consulted.**
GNU's `getopt` reorders `argv` so that `ls foo -l` is `ls -l foo`. POSIX says
`-l` there is an operand. Ours follows POSIX.

*Why, given that permuting is friendlier:* a utility whose argument meaning
depends on an environment variable is a utility whose behaviour differs between
two machines running the same script, which is the class of failure this
ecosystem refuses everywhere else — the same argument that removed terminfo
(`ntui` T-003) and the system tzdb (`ntime` TM-007). The friendliness is real
and it is bought with non-determinism.

**It is a stated departure from GNU, not from POSIX**, and
[`CONFORMANCE.md`](CONFORMANCE.md) lists it in the "differs from what you are
used to" section rather than the conformance table, because we are the
conformant one.

**Rule G-15 — long options are an extension, per utility, and never a
requirement.** `--help` and `--version` are provided by the shared runtime for
every utility because their absence is a genuine annoyance; any other long
option is a per-utility decision recorded in that utility's specification and
listed as an extension (`SCOPE.md` C-2).

---

## 4. `--help` and `--version`

**Rule G-16.** Both are handled by the shared runtime **before** the utility's
own parse runs, both write to standard output, and both exit 0.

POSIX defines neither. They are extensions, listed as such, and provided
because a utility set without them is one people cannot use.

**Rule G-17 — the usage text is generated from the `OptSpec` table**, not
written twice. A synopsis that disagrees with the parser is the failure this
prevents, and it is the same instrument as everything else in this ecosystem: a
document diffed against the thing it describes.

---

## 5. `-` and standard input

**Rule G-18.** `-` as an operand where a file is expected means standard input,
for every utility that reads files. The shared runtime's file-opening helper
implements it once:

```nitpick
posix_open_operand(name) -> Result<InFile>   // "-" yields standard input
```

**Rule G-19 — standard input is opened at most once per invocation.** `cat -
-` is `cat` reading stdin, then reading an exhausted stdin, which is the
correct and surprising behaviour; the helper does not reopen and does not
rewind.

**Rule G-20 — a file named `-` is reached as `./-`**, and the utility does not
try to be clever about it. This is what every implementation does and what
every user expects.
