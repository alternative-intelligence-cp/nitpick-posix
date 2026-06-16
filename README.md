# nitpick-posix

**Nitpick Implementations of POSIX Utilities**

A from-scratch rewrite of the standard POSIX core utilities entirely in the Nitpick programming language! 

This project serves as a cornerstone of the Nitpick ecosystem, providing a native, high-performance, and deeply integrated foundation for future Nitpick-based operating systems (such as the upcoming Mint-based distribution).

> **Status:** v1.0.0 (100% Feature Parity Achieved) 🎉

## Overview

`nitpick-posix` successfully replicates **all 106 standard GNU Coreutils** onto the native Nitpick AST compiler. This ambitious refactor directly ports robust Linux command-line tooling to the safety and modern semantics of Nitpick!

## Key Features

- **Complete Native Parity**: From `cat` and `ls` to complex data manipulation tools like `awk`, `sed`, `grep`, and `csplit`. All 106 binaries are implemented natively.
- **Deep Recursion File Management**: `ls`, `cp`, and `rm` utilize powerful recursion algorithms (`-R` / `-r` flags) with dynamic pointer reallocation utilizing SLists (`nitpick-list`).
- **High-Performance Stream Manipulation**: 
    - `sort` uses array selection sorts for massive streaming texts.
    - `comm` offers flawless columnar line matching.
    - `dd` uses `sys(MMAP)` buffering for pure, block-level raw I/O throughput.
- **Streaming Cryptography**: Native integration with `nitpick-crypto` stream APIs for generating memory-safe, chunk-based cryptographic checksums (`md5sum`, `sha1sum`, `sha256sum`).
- **Execution Wrappers**: Utilizes low-level `sys(SYS_EXECVE)` forwarding to effectively emulate environment context switches and wrappers like `nohup`, `timeout`, `nice`, and `stdbuf`.

## Building

Run the provided build script to compile the complete suite (outputs dynamically compiled executables into `bin/`):

```bash
./build.sh
```

## Contributing

`nitpick-posix` is the core CLI distribution of the Nitpick language ecosystem. Future steps involve transitioning the infrastructure to fully leverage multi-threading (`nitpick-thread`) for concurrent map-reduce pipelines inside tools like `sort` and `grep`. Contributions towards parallelism and optimizations are warmly welcomed!
