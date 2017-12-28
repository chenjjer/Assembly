assume cs:code
code segment
	mov bx,0
	mov cx,64
s:	mov ax,02h
	mov ds,ax
	mov [bx],bx
	inc bx
	loop s
	
	mov ax 4100h
	int 21h
	
code ends
end

