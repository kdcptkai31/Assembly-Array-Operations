;Author: Kai Duty
;Program Name: Array Management Tool
;Date: October 23, 2019
;Class: CS240 MW

align 16

global reverse

segment .data

;empty

segment .bss

;empty

segment .text


reverse:

;---------Needed each time-----------
push rbp
mov rbp, rsp
push rbx
push rcx
push rdx
push rdi
push rsi
push r8
push r9
push r10
push r11
push r12
push r13
push r14
push r15
;-----------------------------------

;rdi holds the array address, rsi holds the number of integers input
mov r14, rdi
mov r13, rsi
;Exits if there the array is empty
cmp r13, 0
je exit
dec r13
;r14 holds the array address, r13 holds the back index
mov r12, 0			;r12 holds the front index


topOfLoop:

mov r15, [r14 + 8*r12]	;Temp holding the front value
mov rbx, [r14 + 8*r13]	;Temp holding the back value
mov [r14 + 8*r12], rbx	;Puts the back value into the front element
mov [r14 + 8*r13], r15	;Puts the front value into the back element
inc r12
dec r13

;If the front index is less than the back index, loop, else exit
cmp r12, r13
jl topOfLoop

exit:

;-------Nedded each time------------
pop r15
pop r14
pop r13
pop r12
pop r11
pop r10
pop r9
pop r8
pop rsi
pop rdi
pop rdx
pop rcx
pop rbx
pop rbp
;-----------------------------------

ret

