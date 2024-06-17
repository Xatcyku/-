.686 
.model flat,stdcall 
 
.stack 100h 
 
.data 
x dw 17
y dw 5
z dw 44
t dw 2
M dw ?
 
.code 
ExitProcess PROTO STDCALL :DWORD 
Start: 

mov ax, z
sub ax, x
sub ax, y


mov bx, t
mov dx, 0

div bx

mov M, ax

mov ax, x
and ax, y

add M, ax



exit: 
Invoke ExitProcess, M 
End Start 
