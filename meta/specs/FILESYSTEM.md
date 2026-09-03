# The filesystem

Paths, traversal, and the two hazards that account for most of the security
history of a utility set.

---

## 1. Paths

**Rule F-1.** A path from an argument is a `string` until it is validated, and
a `Path` after. The prelude's `Path` is absolute, lexically normalised and free
of interior NULs, and `path_parse` is the only way to make one.

**Rule F-2 — lexical normalisation is not kernel resolution** (D-054), and this
is the sentence the whole document exists for. `a/../b` normalises to `b`
lexically; if `a` is a symlink to somewhere else, the kernel disagrees. A
utility that checks containment lexically and then opens by path has checked
nothing.

**Rule F-3 — traversal is descriptor-relative.** `find`, `du`, `cp -R`,
`rm -r`, `pax` and `diff -r` walk with `openat` and `O_NOFOLLOW`, keeping a
descriptor for each directory, never re-resolving a path from the root. The
compiler's `lib/nfs.npk` already demonstrates the family — its `open_beneath`
answers containment **by opening, not by string checks**, which is the phrase
to remember.

**Rule F-4 — a path is bytes, not text.** A filename can be any byte sequence
without a `/` or a NUL, including invalid UTF-8. A utility that decodes a
filename to display it substitutes U+FFFD for the display and keeps the
original bytes for the operation. `ls` of a file with a stray `0xFF` in its
name must not fail, and must not rename anything.

---

## 2. The two hazards

**Rule F-5 — TOCTOU.** Checking a property and then acting on the path is a
race an attacker wins: `test -w f && write f` between a `stat` and an `open` is
the textbook case. Utilities **act and handle the failure**, rather than
checking and then acting. Where a check genuinely must precede an action, it is
performed on a **descriptor already held**, not on a path.

**Rule F-6 — symlink loops and depth.** A directory tree is
attacker-controlled structure, so `SAFETY.md` S-10 applies: an explicit stack,
a stated depth limit, and loop detection by device-and-inode rather than by
path. `find` on a symlink loop must terminate with a diagnostic, not spin.

---

## 3. Permissions and ownership

**Rule F-7 — the flag families are the prelude's** (`fmode`, `oflags`), and a
mode is never an integer in this repository outside the syscall wrappers.
D-230 makes them types precisely so that `PROT_READ` where an `oflags` belongs
is a compile error.

**Rule F-8 — the symbolic mode grammar** (`u+rwx`, `go-w`, `a=r`, `+X`) is
parsed once, in `src/posix/mode.npk`, shared by `chmod`, `find -perm`, `install`
and `pax`. It is small, it is precisely specified, and four hand-written copies
would disagree about `+X`.

**Rule F-9 — the umask applies where the standard says and nowhere else**, and
a utility that creates a file says which mode it asks for. D-213's restrictive
defaults are the ecosystem's habit: a created file is 0644 and a created
directory 0755 unless the standard or an option says otherwise.

---

## 4. Devices, and what a utility must not assume

**Rule F-10.** A "file" may be a directory, a FIFO, a socket, a device, or a
descriptor with no name at all. `cat` of a FIFO blocks and that is correct;
`wc` of a directory is an error the standard names; `cp` of a device copies the
device node or its contents depending on the option, and the utility says
which.

**Rule F-11 — no utility assumes it can seek.** A pipe cannot, and the
utilities that genuinely need to (`tail` reading backwards) detect it and fall
back to a forward strategy rather than failing.

**Rule F-12 — file size is `int64` and is not trusted.** `/proc` files report
zero and are not empty; a growing file's size changes between the `stat` and
the read. A utility that preallocates from a reported size handles both.
