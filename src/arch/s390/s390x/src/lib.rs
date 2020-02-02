#![feature(global_asm)]
#![no_std]
#![deny(warnings)]

extern {
    fn _start() -> !;
}

#[no_mangle]
pub extern "C" fn _iplstart() -> ! {
    unsafe {
        _start()
    }
}

pub fn halt() -> ! {
    loop {
        // TODO: Disable wait
    }
}

global_asm!(include_str!("asm.S"));
