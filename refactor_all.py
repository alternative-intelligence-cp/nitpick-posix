import os
import re

safeSyscalls = {
    "READ", "WRITE", "OPEN", "CLOSE", "LSEEK", "PREAD64", "PWRITE64",
    "OPENAT", "READV", "WRITEV", "FSTAT", "NEWFSTATAT",
    "MMAP", "MUNMAP", "MPROTECT", "BRK", "MREMAP",
    "GETDENTS64", "GETCWD", "CHDIR", "MKDIR", "RMDIR", "RENAME", "RENAMEAT2",
    "UNLINK", "UNLINKAT", "SYMLINK", "READLINK",
    "FCHMOD", "FCHOWN", "UTIMENSAT", "FACCESSAT",
    "GETPID", "GETPPID", "GETTID", "GETUID", "GETGID", "GETEUID", "GETEGID",
    "CLOCK_GETTIME", "CLOCK_NANOSLEEP", "NANOSLEEP",
    "SOCKET", "BIND", "LISTEN", "ACCEPT4", "CONNECT",
    "SEND", "RECV", "SENDTO", "RECVFROM",
    "SETSOCKOPT", "GETSOCKOPT", "SHUTDOWN",
    "POLL", "PPOLL", "EPOLL_CREATE1", "EPOLL_CTL", "EPOLL_WAIT",
    "SELECT", "PSELECT6",
    "PIPE2", "DUP", "DUP2", "DUP3", "EVENTFD2",
    "IOCTL", "FCNTL", "FLOCK", "FSYNC", "FDATASYNC",
    "SYNC", "SYNCFS",
    "GETRANDOM"
}

def parse_args(s, start_idx):
    # s[start_idx] should be '('
    args = []
    curr_arg = ""
    depth = 0
    i = start_idx
    while i < len(s):
        c = s[i]
        if c == '(':
            if depth > 0: curr_arg += c
            depth += 1
        elif c == ')':
            depth -= 1
            if depth == 0:
                args.append(curr_arg.strip())
                return args, i + 1
            curr_arg += c
        elif c == ',':
            if depth == 1:
                args.append(curr_arg.strip())
                curr_arg = ""
            else:
                curr_arg += c
        else:
            curr_arg += c
        i += 1
    return args, i

def process_file(filepath):
    with open(filepath, 'r') as f:
        content = f.read()

    # 1. SYS!! -> SYS downgrade
    out = ""
    i = 0
    while i < len(content):
        if content.startswith("sys!!(", i):
            args, end_idx = parse_args(content, i + 5)
            first_arg = args[0]
            syscall_name = first_arg
            if first_arg.startswith("SYS_"):
                syscall_name = first_arg[4:]
            
            if syscall_name in safeSyscalls:
                out += f"sys({syscall_name}"
                for arg in args[1:]:
                    out += f", {arg}"
                out += ")"
            else:
                out += f"sys!!({first_arg}"
                for arg in args[1:]:
                    out += f", {arg}"
                out += ")"
            i = end_idx
        elif content.startswith("npk_mem_read_byte(", i):
            args, end_idx = parse_args(content, i + 17)
            ptr = args[0]
            offset = args[1]
            out += f"@cast_unchecked<int64>(<-(@cast_unchecked<int8->>(({ptr}) + ({offset}))))"
            i = end_idx
        elif content.startswith("npk_mem_write_byte(", i):
            args, end_idx = parse_args(content, i + 18)
            ptr = args[0]
            offset = args[1]
            val = args[2]
            out += f"(<-(@cast_unchecked<int8->>(({ptr}) + ({offset}))) = @cast_unchecked<int8>({val}))"
            i = end_idx
        elif content.startswith("npk_mem_read_i32(", i):
            args, end_idx = parse_args(content, i + 16)
            ptr = args[0]
            offset = args[1]
            out += f"@cast_unchecked<int64>(<-(@cast_unchecked<int32->>(({ptr}) + ({offset}))))"
            i = end_idx
        elif content.startswith("npk_mem_write_i32(", i):
            args, end_idx = parse_args(content, i + 17)
            ptr = args[0]
            offset = args[1]
            val = args[2]
            out += f"(<-(@cast_unchecked<int32->>(({ptr}) + ({offset}))) = @cast_unchecked<int32>({val}))"
            i = end_idx
        elif content.startswith("npk_libc_mem_read_i64(", i):
            args, end_idx = parse_args(content, i + 21)
            ptr = args[0]
            offset = args[1]
            out += f"(<-(@cast_unchecked<int64->>(({ptr}) + ({offset}))))"
            i = end_idx
        elif content.startswith("npk_libc_mem_write_i64(", i):
            args, end_idx = parse_args(content, i + 22)
            ptr = args[0]
            offset = args[1]
            val = args[2]
            out += f"(<-(@cast_unchecked<int64->>(({ptr}) + ({offset}))) = @cast_unchecked<int64>({val}))"
            i = end_idx
        elif content.startswith("read_string_native(", i):
            # We want to change read_string_native to raw read_string_native
            # But wait! If it is ALREADY `raw read_string_native`, we shouldn't add another raw.
            # Look behind to see if we have `raw `
            if out.endswith("raw "):
                out += "read_string_native("
            else:
                out += "raw read_string_native("
            i += 19
        elif content.startswith("npk_mem_read_string(", i):
            args, end_idx = parse_args(content, i + 19)
            ptr = args[0]
            max_len = args[1]
            out += f"raw read_string_native({ptr}, {max_len})"
            i = end_idx
        else:
            out += content[i]
            i += 1

    with open(filepath, 'w') as f:
        f.write(out)

for root, dirs, files in os.walk('src'):
    for file in files:
        if file.endswith('.npk'):
            process_file(os.path.join(root, file))
