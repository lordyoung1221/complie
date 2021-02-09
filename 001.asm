extern __imp__MessageBoxA@16    ;in user32.dll  或是__imp_MessageBoxA@16
extern __imp__ExitProcess@4    ;in kernel32.dll 或是__imp__ExitProcess@4

global SayHello
global _main


[SECTION .text USE32 ]
szTitle:
    db "SayHello",0
szMsg: 
    db "YK's NASM！！！", 0
SayHello:
    push 0                ;uType
    push dword szTitle    ;lpCaption
    push dword szMsg      ;lpText
    push 0                ;hWnd
    call [__imp__MessageBoxA@16]  ;或是__imp_MessageBoxA@16
    ret 16   

_main:
    call SayHello
    push 0
    call [__imp__ExitProcess@4]  ;或是__imp_MessageBoxA@16