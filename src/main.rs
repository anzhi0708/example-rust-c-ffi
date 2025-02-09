use std::ffi::c_int;

#[link(name = "hello", kind = "dylib")]
extern "C" {
    fn hello() -> c_int;
}

fn main() {
    println!("Hello, world!");
    let ret = unsafe { hello() };
    println!("result is {ret}");
}
