.686
.model flat,stdcall
.stack 100h

.data
X dw 13DDh;
Y dw 715Fh;
Z dw 02FEh;

X_ dw ?;X'
L dw ?;
M dw ?;
R dw ?;
W dw ?;
.code
ExitProcess PROTO STDCALL :DWORD
Start:

mov ax, 007Dh;
add ax, X;���������� � X 007D � ��������� ���������� � X
mov X, ax
xor ax,ax

mov ecx, 3;�������
mov ax, Y;
l1: sub ax, Z
loop l1;
mov X_, ax;��������� ����� ��������� � X'
xor ax,ax;�������� �������


mov ax, X;
add ax, X_;
mov M, ax;������� X' � X � ��������� � M

cmp M, 0F99h;
jl m2 ; ������� ���� ������
jmp m1 ; ����������� �������

m1:
mov ax, 07CBFh
mov dx,0
mov bx, 2
div bx
;��������� � AX


;mov dx, 07CBFh; ������� ����� M
;mov dx, 2d;��������
;div dx;�������

mov bx, Z;
and bx, 09ABh;
add ax, bx
mov R, ax;
xor ax,ax
xor bx,bx


m2:
mov ax, 019Bh
sub ax, 07CBFh
sub ax, 00CFh
mov R, ax
xor ax,ax



m3:
mov R, bx

test bx, 8000h
jnz adr2
jmp adr1

adr1:
add R,1

adr2:
sub R,1



exit:
Invoke ExitProcess,1
End Start