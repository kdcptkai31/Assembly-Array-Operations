;Author: Kai Duty
;Program Name: Array Management Tool
;Date: October 23, 2019
;Class: CS240 MW

align 16
extern printf, getchar, getData, showArray, reverse, stdin, clearerr

global runManage

segment .data

welcomeMessage db "Welcome to Array Management Tool.", 10, 0
thankYouMessage db "Thank you. The array contains the following data:", 10, 0
areTheseCorrect db "Are these values correct(y or n)?: ", 0
dataReversedMessage db "The data have been reversed. This is the array:", 10, 0
stringFormatter db "%s", 0
longFormatter db "ld", 0
newLine db 10, 0


segment .bss


intArray resq 25         ;Initializes an empty array of 25 qwords


segment .text


runManage:

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

;Welcomes the user
mov qword rax, 0
mov rdi, stringFormatter
mov rsi, welcomeMessage
call printf

;Top of the +2 EXTRA CREDIT loop
restart:

;Calls the getData method and returns the aount of integers input
push qword 0
mov rdi, intArray
mov rsi, 25
call getData
mov r12, rax	;Amount of integers input is now in r12, intArray has values
pop rax

;Clears the input buffer
call getchar
mov rax, 0
mov rdi, [stdin]
call clearerr

;Tells user their input data is going to be printed
mov qword rax, 0
mov rdi, stringFormatter
mov rsi, thankYouMessage
call printf
;Calls the showArray method
mov rdi, intArray
mov rsi, r12
call showArray

;Prompt for display verification
mov qword rax, 0
mov rdi, stringFormatter
mov rsi, areTheseCorrect
call printf

;Receives the verification response and compares if it is 'y' or 'n'
mov rbx, 0
call getchar
mov rbx, rax	;puts the ascii value in rbx
mov rax, 0
call getchar
;Clears the input stream
mov rax, 0
mov rdi, [stdin]
call clearerr
;Checks if response was a 'y', if not it loops from "restart:"
cmp rbx, 121
jne restart

;If here, the data was correct and it will now be reversed
mov qword rax, 0
mov rdi, intArray
mov rsi, r12
call reverse

;Show the reversed array
mov qword rax, 0
mov rdi, stringFormatter
mov rsi, dataReversedMessage
call printf
;Shows the now reversed array
mov rdi, intArray
mov rsi, r12
call showArray

;Moves the amount of input integers into rax for return to the main
mov rax, r12

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
