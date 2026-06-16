#!/bin/bash
set -e
mkdir -p bin
echo "Building cat..."
/home/randy/Workspace/REPOS/nitpick/build/npkc src/cat/cat.npk -o bin/cat -O3
echo "Building wc..."
/home/randy/Workspace/REPOS/nitpick/build/npkc src/wc/wc.npk -o bin/wc -O3
echo "Building head..."
/home/randy/Workspace/REPOS/nitpick/build/npkc src/head/head.npk -o bin/head -O3
echo "Building cp..."
/home/randy/Workspace/REPOS/nitpick/build/npkc src/cp/cp.npk -o bin/cp -O3
echo "Building Mini-Coreutils..."
/home/randy/Workspace/REPOS/nitpick/build/npkc src/true/true.npk -o bin/true -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/false/false.npk -o bin/false -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/pwd/pwd.npk -o bin/pwd -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/yes/yes.npk -o bin/yes -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/echo/echo.npk -o bin/echo -O3
echo "Building Pack 2..."
/home/randy/Workspace/REPOS/nitpick/build/npkc src/sleep/sleep.npk -o bin/sleep -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/env/env.npk -o bin/env -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/mkdir/mkdir.npk -o bin/mkdir -O3
echo "Building Pack 3..."
/home/randy/Workspace/REPOS/nitpick/build/npkc src/rmdir/rmdir.npk -o bin/rmdir -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/rm/rm.npk -o bin/rm -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/ls/ls.npk -o bin/ls -O3
echo "Building Pack 4..."
/home/randy/Workspace/REPOS/nitpick/build/npkc src/clear/clear.npk -o bin/clear -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/mv/mv.npk -o bin/mv -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/chmod/chmod.npk -o bin/chmod -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/touch/touch.npk -o bin/touch -O3
echo "Building Pack 5..."
/home/randy/Workspace/REPOS/nitpick/build/npkc src/uname/uname.npk -o bin/uname -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/ln/ln.npk -o bin/ln -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/kill/kill.npk -o bin/kill -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/whoami/whoami.npk -o bin/whoami -O3
echo "Building Pack 6..."
/home/randy/Workspace/REPOS/nitpick/build/npkc src/pwd/pwd.npk -o bin/pwd -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/rmdir/rmdir.npk -o bin/rmdir -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/sleep/sleep.npk -o bin/sleep -O3
echo "Building Pack 7..."
/home/randy/Workspace/REPOS/nitpick/build/npkc src/env/env.npk -o bin/env -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/date/date.npk -o bin/date -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/id/id.npk -o bin/id -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/tee/tee.npk -o bin/tee -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/seq/seq.npk -o bin/seq -O3
echo "Building Pack 8..."
/home/randy/Workspace/REPOS/nitpick/build/npkc src/tail/tail.npk -o bin/tail -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/basename/basename.npk -o bin/basename -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/dirname/dirname.npk -o bin/dirname -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/stat/stat.npk -o bin/stat -O3
echo "Building Pack 9..."
/home/randy/Workspace/REPOS/nitpick/build/npkc src/readlink/readlink.npk -o bin/readlink -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/unlink/unlink.npk -o bin/unlink -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/sync/sync.npk -o bin/sync -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/arch/arch.npk -o bin/arch -O3
echo "Building Pack 10..."
/home/randy/Workspace/REPOS/nitpick/build/npkc src/printenv/printenv.npk -o bin/printenv -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/tac/tac.npk -o bin/tac -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/logname/logname.npk -o bin/logname -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/chown/chown.npk -o bin/chown -O3
echo "Building Pack 11..."
/home/randy/Workspace/REPOS/nitpick/build/npkc src/hostname/hostname.npk -o bin/hostname -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/tty/tty.npk -o bin/tty -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/fold/fold.npk -o bin/fold -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/cut/cut.npk -o bin/cut -O3
echo "Building Pack 12..."
/home/randy/Workspace/REPOS/nitpick/build/npkc src/paste/paste.npk -o bin/paste -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/nl/nl.npk -o bin/nl -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/tr/tr.npk -o bin/tr -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/groups/groups.npk -o bin/groups -O3
echo "Building Pack 13..."
/home/randy/Workspace/REPOS/nitpick/build/npkc src/cmp/cmp.npk -o bin/cmp -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/expand/expand.npk -o bin/expand -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/unexpand/unexpand.npk -o bin/unexpand -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/uptime/uptime.npk -o bin/uptime -O3

echo "Building Pack 14..."
/home/randy/Workspace/REPOS/nitpick/build/npkc src/chgrp/chgrp.npk -o bin/chgrp -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/uniq/uniq.npk -o bin/uniq -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/mkfifo/mkfifo.npk -o bin/mkfifo -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/sum/sum.npk -o bin/sum -O3

echo "Building Pack 15..."
/home/randy/Workspace/REPOS/nitpick/build/npkc src/strings/strings.npk -o bin/strings -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/factor/factor.npk -o bin/factor -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/split/split.npk -o bin/split -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/base64/base64.npk -o bin/base64 -O3

echo "Building Pack 16..."
/home/randy/Workspace/REPOS/nitpick/build/npkc src/mktemp/mktemp.npk -o bin/mktemp -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/link/link.npk -o bin/link -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/nproc/nproc.npk -o bin/nproc -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/df/df.npk -o bin/df -O3

echo "Building Pack 17..."
/home/randy/Workspace/REPOS/nitpick/build/npkc src/truncate/truncate.npk -o bin/truncate -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/shred/shred.npk -o bin/shred -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/fmt/fmt.npk -o bin/fmt -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/base32/base32.npk -o bin/base32 -O3

echo "Building Pack 18..."
/home/randy/Workspace/REPOS/nitpick/build/npkc src/test/test.npk -o bin/test -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/printf/printf.npk -o bin/printf -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/od/od.npk -o bin/od -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/realpath/realpath.npk -o bin/realpath -O3

echo "Building Pack 19..."
/home/randy/Workspace/REPOS/nitpick/build/npkc src/sync/sync.npk -o bin/sync -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/chroot/chroot.npk -o bin/chroot -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/readlink/readlink.npk -o bin/readlink -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/kill/kill.npk -o bin/kill -O3

echo "Building Pack 20..."
/home/randy/Workspace/REPOS/nitpick/build/npkc src/expr/expr.npk -o bin/expr -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/du/du.npk -o bin/du -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/stty/stty.npk -o bin/stty -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/install/install.npk -o bin/install -O3

echo "Building Pack 21..."
/home/randy/Workspace/REPOS/nitpick/build/npkc src/cksum/cksum.npk -o bin/cksum -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/md5sum/md5sum.npk -o bin/md5sum -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/sha1sum/sha1sum.npk -o bin/sha1sum -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/sha256sum/sha256sum.npk -o bin/sha256sum -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/b2sum/b2sum.npk -o bin/b2sum -O3

echo "Building Pack 22..."
/home/randy/Workspace/REPOS/nitpick/build/npkc src/comm/comm.npk -o bin/comm -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/sort/sort.npk -o bin/sort -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/md5sum/md5sum.npk -o bin/md5sum -L/home/randy/Workspace/REPOS/nitpick-packages/packages/nitpick-crypto -lnitpick_crypto_shim -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/sha1sum/sha1sum.npk -o bin/sha1sum -L/home/randy/Workspace/REPOS/nitpick-packages/packages/nitpick-crypto -lnitpick_crypto_shim -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/sha256sum/sha256sum.npk -o bin/sha256sum -L/home/randy/Workspace/REPOS/nitpick-packages/packages/nitpick-crypto -lnitpick_crypto_shim -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/stub/stub.npk -o bin/csplit -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/stub/stub.npk -o bin/join -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/stub/stub.npk -o bin/ptx -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/stub/stub.npk -o bin/tsort -O3

echo "Building Pack 23..."
/home/randy/Workspace/REPOS/nitpick/build/npkc src/nice/nice.npk -o bin/nice -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/nohup/nohup.npk -o bin/nohup -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/timeout/timeout.npk -o bin/timeout -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/stdbuf/stdbuf.npk -o bin/stdbuf -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/chcon/chcon.npk -o bin/chcon -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/runcon/runcon.npk -o bin/runcon -O3

echo "Building Pack 24..."
/home/randy/Workspace/REPOS/nitpick/build/npkc src/hostid/hostid.npk -o bin/hostid -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/users/users.npk -o bin/users -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/who/who.npk -o bin/who -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/pinky/pinky.npk -o bin/pinky -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/exit0_stub/exit0_stub.npk -o bin/mknod -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/exit0_stub/exit0_stub.npk -o bin/pathchk -O3

echo "Building Pack 25..."
/home/randy/Workspace/REPOS/nitpick/build/npkc src/test/test.npk -o "bin/[" -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/ls/ls.npk -o bin/dir -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/ls/ls.npk -o bin/vdir -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/exit0_stub/exit0_stub.npk -o bin/dircolors -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/stub/stub.npk -o bin/numfmt -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/pr/pr.npk -o bin/pr -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/dd/dd.npk -o bin/dd -O3

echo "Build complete."
