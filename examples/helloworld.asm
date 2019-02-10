; I used this tutorial   https://www.tutorialspoint.com/assembly_programming/assembly_system_calls.htm
section	.text
	global _start
_start:
	mov	edx, msg_len   
	mov	ecx, helloworld_msg
	mov	eax, 4
	mov	ebx, 1
	int	0x80
	mov	eax, 1
	int	0x80

section	.data

helloworld_msg	db	'Hello, world!',0xa
msg_len	equ	$ - helloworld_msg