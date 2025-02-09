# Minimal Rust C FFI example

## Keypoints
- Add `build = "src/build.rs"` in `Cargo.toml` (otherwise cargo sometimes fails to pick it up and I don't know why)
- `#[link(name = "hello", kind = "dylib")]` (or another kind; in this case a dylib)
- `cargo:rustc-link-search` flag in source file
- Set environment variables correctly (Linux: `LD_LIBRARY_PATH`, Mac: `DYLD_LIBRARY_PATH`)
