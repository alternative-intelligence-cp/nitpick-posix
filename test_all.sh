for f in src/*/*.npk; do
    echo "==> $f <=="
    /home/randy/Workspace/REPOS/nitpick/build/nitpickc -I src -I /home/randy/Workspace/REPOS --verify --verify-contracts --extra-picky -c $f -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime -O3 -Wno-unused-variable -Wno-unused-parameter 2>&1 | sed 's/\x1b\[[0-9;]*m//g' | grep "error:"
done
