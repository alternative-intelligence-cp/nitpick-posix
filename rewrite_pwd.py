with open("src/pwd/pwd.npk", "w") as f:
    f.write("""// pwd.npk
use "../vendor/io_utils.npk".*;
use "../vendor/mem_utils.npk".*;
use "../vendor/sys_constants.npk".*;

func:print_err = int32(string:s) {
    int64:len = string_length(s);
    drop(s);
    drop(len);
    pass cast_unchecked<int32>(sys(WRITE, 2i64, s, len) ? -1i64);
};

pub func:pwd_main = int32(int32:argc, wild int8->:argv) {
    string:cwd = sys(GETCWD) ? "";
    if (string_equals(cwd, "")) {
        drop(print_err("pwd: error getting current working directory\\n"));
        pass 1;
    }

    int64:len = string_length(cwd);
    drop(sys(WRITE, 1i64, cwd, len));
    drop(sys(WRITE, 1i64, "\\n", 1i64));
    pass 0;
};
""")
