.section ".s390x.iplheader","a"
.global _ipl

_ipl:
        .long   0x00080000,0x80000000+_iplstart  # The first 24 bytes are loaded
        .long   0x02000018,0x60000050            # by ipl to addresses 0-23.
        .long   0x02000068,0x60000050            # (a PSW and two CCWs).
        .fill   80-24,1,0x40                     # bytes 24-79 are discarded !!
        .long   0x020000f0,0x60000050            # The next 160 byte are loaded
        .long   0x02000140,0x60000050            # to addresses 0x18-0xb7
        .long   0x02000190,0x60000050            # They form the continuation
        .long   0x020001e0,0x60000050            # of the CCW program started
        .long   0x02000230,0x60000050            # by ipl and load the range
        .long   0x02000280,0x60000050            # 0x0f0-0x730 from the image
        .long   0x020002d0,0x60000050            # to the range 0x0f0-0x730
        .long   0x02000320,0x60000050            # in memory. At the end of
        .long   0x02000370,0x60000050            # the channel program the PSW
        .long   0x020003c0,0x60000050            # at location 0 is loaded.
        .long   0x02000410,0x60000050            # Initial processing starts
        .long   0x02000460,0x60000050            # at 0x200 = iplstart.
        .long   0x020004b0,0x60000050
        .long   0x02000500,0x60000050
        .long   0x02000550,0x60000050
        .long   0x020005a0,0x60000050
        .long   0x020005f0,0x60000050
        .long   0x02000640,0x60000050
        .long   0x02000690,0x60000050
        .long   0x020006e0,0x20000050
        .org    0x1a0
        .quad   0,_iplstart
