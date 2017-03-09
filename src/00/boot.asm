[BITS 16]
org 0x7C00


start: ;This section of code is added based on Michael Petch's bootloader tips
 
    xor ax,ax      ; We want a segment of 0 for DS for this question
    mov ds,ax      ; Set AX to appropriate segment value for your situation
    mov bx,0x8000  ; Stack segment can be any usable memory

    cli            ; Disable interrupts to circumvent bug on early 8088 CPUs
    mov ss,bx      ; Top of the stack @ 0x80000.
    mov sp,ax      ; Set SP=0 so the bottom of stack will be just below 0x90000
    sti            ; Re-enable interrupts
    cld            ; Set the direction flag to be positive direction

    mov ax, 0xB800 ; Video buffer
    mov es, ax     ; Copy address of video buffer to extra segment

    mov byte [es:0], 'A'    ; Move character A to first address
    mov byte [es:1], 0x17   ; Format for blue background, white foreground


times   510-($-$$) db 0     ; Create padding to fill out to 510 bytes
dw      0xaa55              ; Magic number in the trailer of a boot sector
