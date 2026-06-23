#!/bin/bash
set -e
mkdir -p bin
echo "Building cat..."
/home/randy/Workspace/REPOS/nitpick/build/npkc src/cat/cat.npk -o bin/cat -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3
echo "Building wc..."
/home/randy/Workspace/REPOS/nitpick/build/npkc src/wc/wc.npk -o bin/wc -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3
echo "Building head..."
/home/randy/Workspace/REPOS/nitpick/build/npkc src/head/head.npk -o bin/head -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3
echo "Building cp..."
/home/randy/Workspace/REPOS/nitpick/build/npkc src/cp/cp.npk -o bin/cp -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3
echo "Building Mini-Coreutils..."
/home/randy/Workspace/REPOS/nitpick/build/npkc src/true/true.npk -o bin/true -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/false/false.npk -o bin/false -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/pwd/pwd.npk -o bin/pwd -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/yes/yes.npk -o bin/yes -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/echo/echo.npk -o bin/echo -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3
echo "Building Pack 2..."
/home/randy/Workspace/REPOS/nitpick/build/npkc src/sleep/sleep.npk -o bin/sleep -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/env/env.npk -o bin/env -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/mkdir/mkdir.npk -o bin/mkdir -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3
echo "Building Pack 3..."
/home/randy/Workspace/REPOS/nitpick/build/npkc src/rmdir/rmdir.npk -o bin/rmdir -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/rm/rm.npk -o bin/rm -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/ls/ls.npk -o bin/ls -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3
echo "Building Pack 4..."
/home/randy/Workspace/REPOS/nitpick/build/npkc src/clear/clear.npk -o bin/clear -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/mv/mv.npk -o bin/mv -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/chmod/chmod.npk -o bin/chmod -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/touch/touch.npk -o bin/touch -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3
echo "Building Pack 5..."
/home/randy/Workspace/REPOS/nitpick/build/npkc src/uname/uname.npk -o bin/uname -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/ln/ln.npk -o bin/ln -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/kill/kill.npk -o bin/kill -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/whoami/whoami.npk -o bin/whoami -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3
echo "Building Pack 6..."
/home/randy/Workspace/REPOS/nitpick/build/npkc src/pwd/pwd.npk -o bin/pwd -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/rmdir/rmdir.npk -o bin/rmdir -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/sleep/sleep.npk -o bin/sleep -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3
echo "Building Pack 7..."
/home/randy/Workspace/REPOS/nitpick/build/npkc src/env/env.npk -o bin/env -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/date/date.npk -o bin/date -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/id/id.npk -o bin/id -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/tee/tee.npk -o bin/tee -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/seq/seq.npk -o bin/seq -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3
echo "Building Pack 8..."
/home/randy/Workspace/REPOS/nitpick/build/npkc src/tail/tail.npk -o bin/tail -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/basename/basename.npk -o bin/basename -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/dirname/dirname.npk -o bin/dirname -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/stat/stat.npk -o bin/stat -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3
echo "Building Pack 9..."
/home/randy/Workspace/REPOS/nitpick/build/npkc src/readlink/readlink.npk -o bin/readlink -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/unlink/unlink.npk -o bin/unlink -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/sync/sync.npk -o bin/sync -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/arch/arch.npk -o bin/arch -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3
echo "Building Pack 10..."
/home/randy/Workspace/REPOS/nitpick/build/npkc src/printenv/printenv.npk -o bin/printenv -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/tac/tac.npk -o bin/tac -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/logname/logname.npk -o bin/logname -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/chown/chown.npk -o bin/chown -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3
echo "Building Pack 11..."
/home/randy/Workspace/REPOS/nitpick/build/npkc src/hostname/hostname.npk -o bin/hostname -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/tty/tty.npk -o bin/tty -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/fold/fold.npk -o bin/fold -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/cut/cut.npk -o bin/cut -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3
echo "Building Pack 12..."
/home/randy/Workspace/REPOS/nitpick/build/npkc src/paste/paste.npk -o bin/paste -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/nl/nl.npk -o bin/nl -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/tr/tr.npk -o bin/tr -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/groups/groups.npk -o bin/groups -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3
echo "Building Pack 13..."
/home/randy/Workspace/REPOS/nitpick/build/npkc src/cmp/cmp.npk -o bin/cmp -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/expand/expand.npk -o bin/expand -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/unexpand/unexpand.npk -o bin/unexpand -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/uptime/uptime.npk -o bin/uptime -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3

echo "Building Pack 14..."
/home/randy/Workspace/REPOS/nitpick/build/npkc src/chgrp/chgrp.npk -o bin/chgrp -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/uniq/uniq.npk -o bin/uniq -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/mkfifo/mkfifo.npk -o bin/mkfifo -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/sum/sum.npk -o bin/sum -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3

echo "Building Pack 15..."
/home/randy/Workspace/REPOS/nitpick/build/npkc src/strings/strings.npk -o bin/strings -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/factor/factor.npk -o bin/factor -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/split/split.npk -o bin/split -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/base64/base64.npk -o bin/base64 -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3

echo "Building Pack 16..."
/home/randy/Workspace/REPOS/nitpick/build/npkc src/mktemp/mktemp.npk -o bin/mktemp -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/link/link.npk -o bin/link -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/nproc/nproc.npk -o bin/nproc -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/df/df.npk -o bin/df -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3

echo "Building Pack 17..."
/home/randy/Workspace/REPOS/nitpick/build/npkc src/truncate/truncate.npk -o bin/truncate -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/shred/shred.npk -o bin/shred -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/fmt/fmt.npk -o bin/fmt -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/base32/base32.npk -o bin/base32 -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3

echo "Building Pack 18..."
/home/randy/Workspace/REPOS/nitpick/build/npkc src/test/test.npk -o bin/test -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/printf/printf.npk -o bin/printf -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/od/od.npk -o bin/od -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/realpath/realpath.npk -o bin/realpath -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3

echo "Building Pack 19..."
/home/randy/Workspace/REPOS/nitpick/build/npkc src/sync/sync.npk -o bin/sync -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/chroot/chroot.npk -o bin/chroot -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/readlink/readlink.npk -o bin/readlink -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/kill/kill.npk -o bin/kill -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3

echo "Building Pack 20..."
/home/randy/Workspace/REPOS/nitpick/build/npkc src/expr/expr.npk -o bin/expr -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/du/du.npk -o bin/du -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/stty/stty.npk -o bin/stty -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/install/install.npk -o bin/install -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3

echo "Building Pack 21..."
/home/randy/Workspace/REPOS/nitpick/build/npkc src/cksum/cksum.npk -o bin/cksum -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -L/home/randy/Workspace/REPOS/nitpick-packages/packages/nitpick-crypto -lnitpick_crypto_shim -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/b2sum/b2sum.npk -o bin/b2sum -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -L/home/randy/Workspace/REPOS/nitpick-packages/packages/nitpick-crypto -lnitpick_crypto_shim -O3

echo "Building Pack 22..."
/home/randy/Workspace/REPOS/nitpick/build/npkc src/comm/comm.npk -o bin/comm -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/sort/sort.npk -o bin/sort -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/md5sum/md5sum.npk -o bin/md5sum -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -L/home/randy/Workspace/REPOS/nitpick-packages/packages/nitpick-crypto -lnitpick_crypto_shim -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/sha1sum/sha1sum.npk -o bin/sha1sum -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -L/home/randy/Workspace/REPOS/nitpick-packages/packages/nitpick-crypto -lnitpick_crypto_shim -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/sha256sum/sha256sum.npk -o bin/sha256sum -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -L/home/randy/Workspace/REPOS/nitpick-packages/packages/nitpick-crypto -lnitpick_crypto_shim -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/stub/stub.npk -o bin/csplit -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/stub/stub.npk -o bin/join -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/stub/stub.npk -o bin/ptx -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/stub/stub.npk -o bin/tsort -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3

echo "Building Pack 23..."
/home/randy/Workspace/REPOS/nitpick/build/npkc src/nice/nice.npk -o bin/nice -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/nohup/nohup.npk -o bin/nohup -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/timeout/timeout.npk -o bin/timeout -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/stdbuf/stdbuf.npk -o bin/stdbuf -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/chcon/chcon.npk -o bin/chcon -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/runcon/runcon.npk -o bin/runcon -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3

echo "Building Pack 24..."
/home/randy/Workspace/REPOS/nitpick/build/npkc src/hostid/hostid.npk -o bin/hostid -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/users/users.npk -o bin/users -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/who/who.npk -o bin/who -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/pinky/pinky.npk -o bin/pinky -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/exit0_stub/exit0_stub.npk -o bin/mknod -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/exit0_stub/exit0_stub.npk -o bin/pathchk -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3

echo "Building Pack 25..."
/home/randy/Workspace/REPOS/nitpick/build/npkc src/test/test.npk -o "bin/[" -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/ls/ls.npk -o bin/dir -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/ls/ls.npk -o bin/vdir -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/exit0_stub/exit0_stub.npk -o bin/dircolors -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/stub/stub.npk -o bin/numfmt -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/pr/pr.npk -o bin/pr -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3
/home/randy/Workspace/REPOS/nitpick/build/npkc src/dd/dd.npk -o bin/dd -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3

echo "Build complete."
