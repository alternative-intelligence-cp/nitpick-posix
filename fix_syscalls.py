import os
import glob
import re

constants = {
    '0i64': 'SYS_READ',
    '1i64': 'SYS_WRITE',
    '2i64': 'SYS_OPEN',
    '3i64': 'SYS_CLOSE',
    '4i64': 'SYS_STAT',
    '5i64': 'SYS_FSTAT',
    '9i64': 'SYS_MMAP',
    '10i64': 'SYS_MPROTECT',
    '11i64': 'SYS_MUNMAP',
    '22i64': 'SYS_PIPE',
    '32i64': 'SYS_DUP',
    '33i64': 'SYS_DUP2',
    '39i64': 'SYS_GETPID',
    '57i64': 'SYS_FORK',
    '59i64': 'SYS_EXECVE',
    '60i64': 'SYS_EXIT',
    '61i64': 'SYS_WAIT4',
    '62i64': 'SYS_KILL',
    '72i64': 'SYS_FCNTL',
    '79i64': 'SYS_GETCWD',
    '80i64': 'SYS_CHDIR',
    '83i64': 'SYS_MKDIR',
    '84i64': 'SYS_RMDIR',
    '86i64': 'SYS_LINK',
    '87i64': 'SYS_UNLINK',
    '88i64': 'SYS_SYMLINK',
    '89i64': 'SYS_READLINK',
    '90i64': 'SYS_CHMOD',
    '92i64': 'SYS_CHOWN',
    '96i64': 'SYS_GETTIMEOFDAY',
    '133i64': 'SYS_MKNOD',
    '137i64': 'SYS_STATFS',
    '161i64': 'SYS_CHROOT',
    '217i64': 'SYS_GETDENTS64',
    '228i64': 'SYS_CLOCK_GETTIME',
    '231i64': 'SYS_EXIT_GROUP',
    '257i64': 'SYS_OPENAT',
    '258i64': 'SYS_MKDIRAT',
    '262i64': 'SYS_NEWFSTATAT',
    '263i64': 'SYS_UNLINKAT',
    '268i64': 'SYS_FCHMODAT',
    '318i64': 'SYS_GETRANDOM',
}

sys_constant_file = "// sys_constants.npk\n" + "".join([f"pub int64:{v} = {k};\n" for k,v in constants.items()])
open('src/vendor/sys_constants.npk', 'w').write(sys_constant_file)

for f in glob.glob('src/**/*.npk', recursive=True):
    with open(f, 'r') as file:
        content = file.read()
    
    modified = False
    
    if 'sys!!' in content or 'sys!!!' in content:
        for k, v in constants.items():
            new_content = re.sub(r'sys!!\(' + k + r'([,)])', r'sys!!(' + v + r'\1', content)
            if new_content != content:
                modified = True
                content = new_content
            
            new_content = re.sub(r'sys!!!\(' + k + r'([,)])', r'sys!!!(' + v + r'\1', content)
            if new_content != content:
                modified = True
                content = new_content
        
        if modified and 'sys_constants.npk' not in content and 'sys_constants.npk' not in f:
            # add use statement
            if f.startswith('src/vendor/'):
                use_stmt = 'use "sys_constants.npk".*;\n'
            elif f.count('/') == 2:
                use_stmt = 'use "../vendor/sys_constants.npk".*;\n'
            elif f.count('/') == 1:
                use_stmt = 'use "vendor/sys_constants.npk".*;\n'
            else:
                use_stmt = 'use "vendor/sys_constants.npk".*;\n'
                
            # put it after other use statements or at top
            if 'use ' in content:
                content = content.replace('use ', use_stmt + 'use ', 1)
            else:
                content = use_stmt + content
        
        if modified:
            with open(f, 'w') as file:
                file.write(content)
