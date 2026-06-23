import sys

path = "/home/randy/Workspace/REPOS/nitpick-packages/packages/nitpick-crypto/src/nitpick_crypto.npk"

with open(path, "r") as f:
    content = f.read()

# Just replace `extern "nitpick_crypto_shim" {` with the split blocks
replacement = """
extern "nitpick_crypto_shim" {
    // ── One-shot ───────────────────────────────────────────────────────────────
    func:nitpick_crypto_sha1          = string(string:data);
    func:nitpick_crypto_sha256        = string(string:data);
    func:nitpick_crypto_md5           = string(string:data);
    func:nitpick_crypto_hmac_sha1     = string(string:key, string:data);
    func:nitpick_crypto_hmac_sha1_hex = string(string:key_hex, string:data_hex);
    func:nitpick_crypto_hmac_sha256   = string(string:key, string:data);
    func:nitpick_crypto_sha256_verify = int32(string:data, string:expected);
}
extern "nitpick_crypto_shim" {
    func:nitpick_crypto_md5_verify    = int32(string:data, string:expected);

    // ── MD5 streaming ──────────────────────────────────────────────────────────
    func:nitpick_crypto_md5_init     = int64();
    func:nitpick_crypto_md5_update   = int32(int64:ctx, int64:buf_ptr, int64:length);
    func:nitpick_crypto_md5_finalize = string(int64:ctx);
    func:nitpick_crypto_md5_free     = int32(int64:ctx);
}
extern "nitpick_crypto_shim" {
    // ── SHA-1 streaming ────────────────────────────────────────────────────────
    func:nitpick_crypto_sha1_init     = int64();
    func:nitpick_crypto_sha1_update   = int32(int64:ctx, int64:buf_ptr, int64:length);
    func:nitpick_crypto_sha1_finalize = string(int64:ctx);
    func:nitpick_crypto_sha1_free     = int32(int64:ctx);
}
extern "nitpick_crypto_shim" {
    // ── SHA-256 streaming ──────────────────────────────────────────────────────
    func:nitpick_crypto_sha256_init     = int64();
    func:nitpick_crypto_sha256_update   = int32(int64:ctx, int64:buf_ptr, int64:length);
    func:nitpick_crypto_sha256_finalize = string(int64:ctx);
    func:nitpick_crypto_sha256_free     = int32(int64:ctx);
}
extern "nitpick_crypto_shim" {
    // ── BLAKE2b streaming ──────────────────────────────────────────────────────
    func:nitpick_crypto_blake2b_init     = int64(int32:outlen);
    func:nitpick_crypto_blake2b_update   = int32(int64:ctx, int64:buf_ptr, int64:length);
    func:nitpick_crypto_blake2b_finalize = string(int64:ctx);
    func:nitpick_crypto_blake2b_free     = int32(int64:ctx);
}
"""

start_idx = content.find('extern "nitpick_crypto_shim" {')
end_idx = content.find('}', start_idx)

if start_idx != -1 and end_idx != -1:
    content = content[:start_idx] + replacement.strip() + content[end_idx+1:]
    with open(path, "w") as f:
        f.write(content)
    print("Fixed!")
else:
    print("Could not find block!")
