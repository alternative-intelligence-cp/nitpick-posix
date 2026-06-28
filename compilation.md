# Nitpick POSIX Coreutils - Compilation & Audit Report

**Release version:** `0.25.4`
**Target Binary:** `build/npk_coreutils` (Multi-call binary for 90+ POSIX tools)
**Toolchain:** `nitpickc` (Nitpick Compiler)
**Date:** June 28, 2026

## 1. Build Overview

The `npk_coreutils` binary is a single executable multiplexer encompassing over 90 standardized POSIX utilities. The compilation process builds all applets natively into a unified AST via `npk_coreutils.npk`. 

### Compilation Command

The core build is invoked via `build.sh` using the following compiler arguments:

```bash
/home/randy/Workspace/REPOS/nitpick/build/npkc src/npk_coreutils.npk \
    -o build/npk_coreutils \
    -I src/ \
    -L/home/randy/Workspace/REPOS/nitpick/build \
    -lnitpick_runtime \
    -L/home/randy/Workspace/REPOS/nitpick-packages/packages/nitpick-crypto \
    -lnitpick_crypto_shim \
    -O3
```

### Dependencies

- **`libnitpick_runtime`**: Core runtime library provided by the `nitpick` base repository.
- **`libnitpick_crypto_shim`**: Cryptographic shim library (located in `nitpick-packages/packages/nitpick-crypto`) providing FFI interfaces for `md5sum`, `sha1sum`, `sha256sum`, `cksum`, and `b2sum`.

## 2. Stability & Safety Audits Resolved in 0.25.4

The 0.25.4 build strictly guarantees the elimination of several critical safety anti-patterns:

1. **Standardized Program Endpoints**:
   - Eliminated all legacy/illegal `exit()` function calls from child applets (e.g., `expr.npk`).
   - Standardized routing through a unified, globally defined `failsafe(tbb32:err)` handler to ensure safe unwinding and error handling.
2. **Safe Memory Operations**:
   - Scrubbed all unchecked memory pointer dereferencing (`<-` syntax) across utilities such as `grep.npk` and `cal.npk`.
   - Replaced raw dereferencing with safe core memory APIs (`npk_mem_read_byte`, `npk_mem_write_byte`, and `npk_mem_read_64`).
3. **Macro Validation**:
   - Refactored all invalid static `sys(...)` syscall macros to properly expand dynamically via `sys!!(...)` for calls like `SYS_GETDENTS64` and `SYS_NEWFSTATAT`.

## 3. Verification & CI Test Results

### Individual Verification (`test_all.sh`)
The codebase underwent a strict individual tool sweep using the `nitpickc --verify` flag. The verification script checks every `*.npk` file in the `src/*` directory natively.
- **Total Files Verified:** 90+ 
- **Compilation Errors Detected:** 0
- **Warning Status:** LLVM Module Verification passes completely with 0 shadowing bugs.

### Final Linkage
The final object linking process natively links the `nitpick_crypto` external interfaces without undefined references, confirming that all FFI function signatures (`extern func:nitpick_crypto_*`) exactly match the provided `libnitpick_crypto_shim.a` signatures.

## 4. Conclusion
The compiler pipeline for `nitpick-posix` Release 0.25.4 completes cleanly with zero errors, fully enforcing Nitpick's type-safety requirements and effectively consolidating all tools into a robust, memory-safe, and dependency-linked multi-call executable.
