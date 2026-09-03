# What every utility shares

The shape of a program in this repository. `src/posix/` is this document in
code, and a utility that does not fit it is a finding rather than a special
case.

---

## 1. The shape

```nitpick
mod:main;
use "../../posix/posix.npk".*;

fixed OptSpec[]:SPEC = [ … ];          // ARGUMENTS.md G-11: data, not code

async func:main = int32(cstring[]:argv) {
    Args:a = posix_start(SPEC, argv, "wc") ?| { exit 2i32; };
    …
    exit 0i32;
};

func:failsafe = int32(Error:e) { #posix_failsafe(e) };   // SAFETY.md S-2
```

**Rule U-1.** `posix_start` does the whole preamble: `--help` and `--version`,
the parse, and the usage message on failure. A utility's `main` begins with its
own work, not with argument plumbing.

**Rule U-2 — `main` is `async`.** Every stream operation in this language is
(D-071), so a utility that reads a file is async whether it wants to be or not.
The trivial ones are too, for uniformity — a `true` that is sync and a `cat`
that is not would be two shapes for one thing.

---

## 2. Streams

**Rule U-3 — a utility reads its operands in order and writes to standard
output**, and both go through the shared helpers. Nothing opens a descriptor
directly.

**Rule U-4 — output is buffered; diagnostics are not.** Standard output is
line-buffered, standard error is unbuffered, always, and never inferred from
whether the output is a terminal (D-076, and `ntui` T-003's argument in its
general form). A utility that wants throughput wraps its own writer.

**Rule U-5 — a short write is retried; a failed write is fatal.** The write-all
loop is the shared runtime's, once. A utility that ignored a failed write would
report success for output that does not exist, which is the `write_file` rule
the compiler's own floor already follows.

**Rule U-6 — the last line need not end in a newline, and this is handled
explicitly.** POSIX defines a text file as ending in a newline; real files
frequently do not. Every line-oriented utility states what it does with an
incomplete last line, and the shared line reader reports the distinction rather
than hiding it. `wc -l` counting differently from `sed -n '$='` on the same
file is the bug this prevents.

---

## 3. Diagnostics

**Rule U-7.** One format, from one function:

```
utility: message
utility: operand: message
```

Never a prefix that varies, never a bare message, never a trailing period. The
operand is included where the failure is about one, because `cp: cannot open`
without saying which file is a diagnostic that wasted somebody's afternoon.

**Rule U-8 — a diagnostic naming an errno uses the errno's own text**, from one
table in the shared runtime. `ENOENT` is "no such file or directory" here as it
is everywhere, because a user greps for that string.

**Rule U-9 — a utility that fails on one operand continues to the next, and
exits non-zero at the end.** `cat a missing b` prints `a`, reports the failure,
prints `b`, and exits 1. Stopping at the first failure is what a naive
implementation does and it is wrong: the standard says otherwise and so does
every user's expectation.

---

## 4. Text

**Rule U-10 — the C/POSIX locale, always, and no other.** Collation is by byte
value, `[a-z]` means those twenty-six, case conversion is ASCII. This is a
consequence of the ecosystem having no locale (`SCOPE.md` C-7) and it is stated
rather than implied, because `sort` under a different collation produces a
different order and somebody will notice.

**Rule U-11 — UTF-8 passes through undamaged.** A utility that does not
interpret bytes does not decode them: `cat`, `cp`, `tee`, `split` are byte
transparent. A utility that measures or transforms characters — `wc -m`, `tr`,
`fold`, `expand`, `cut -c` — decodes UTF-8 and says so, and its `-b` or `-c`
distinction is the one place the difference is user-visible.

**Rule U-12 — invalid UTF-8 in a decoding utility does not stop it.** It is
replaced by U+FFFD for measurement purposes and passed through byte-for-byte on
output, so `tr` over a mixed-encoding file damages nothing it was not asked to
change.

---

## 5. What a utility may not do

**Rule U-13.** No utility: reads the environment except where the standard says
it does (`PATH`, `TMPDIR`, `TZ`, `HOME`, `COLUMNS`); consults `isatty` to
change behaviour; installs a signal handler; or spawns another utility from
this set to do its work. The last one matters — a `grep -r` that shells out to
`find` would inherit `find`'s bugs and its argument quoting.

**Rule U-14 — `TZ` is the exception that proves U-13**, and it is handled by
`ntime`'s explicit mechanism rather than implicitly: a utility that needs local
time asks, and is told which of four mechanisms answered (`ntime` TM-019).
