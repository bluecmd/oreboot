ENTRY(_boot);

SECTIONS
{
    . = 0x0;
    .bootblock :
    {
        KEEP(*(.bootblock.boot));
    }
    .text :
    {
        KEEP(*(.text .text.*));
    }
    .rodata :
    {
        KEEP(*(.rodata .rodata.*));
    }

    /DISCARD/ : { *(.comment) *(.gnu*) *(.note*) *(.eh_frame*) }
}
