#![no_std]
#![deny(warnings)]

pub mod reg;

// Bare minimal initialization to make the system usable (no DRAM e.g.)
pub fn init() {
    cpu::init();
}

