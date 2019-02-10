[org 0x7c00]
mov ah, 0x0e ; to tell that everytime we raise video interrupt (0x10), we want to print contents of al to the screen
mov bx, hello_world_message

print_loop_start:
    mov al, [bx]
    cmp al, 0 ; check if the end of the string has been reached
    je wait_in_loop_infinitely ; end the print process and wait in infinite loop
    
    int 0x10 ; create video interrupt
    add bx, 1; increment index so we can print next character
    jmp print_loop_start

wait_in_loop_infinitely:
	jmp $ ; wait forever

hello_world_message:
    db "Hello World !", 0

times 510-($-$$) db 0 ;pad with 0 to make length of 512
dw 0xaa55 ; magic word required for boot