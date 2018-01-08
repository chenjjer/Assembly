assume cs:codesg,ds:data,ss:stack
data segment
	db "welcome to masm!"
	dw 02h,24h,71h
data ends

stack segment
	db 8 dup(0)
stack ends

codesg segment
start:
	mov ax,data
	mov ds,ax
	
	mov ax,stack
	mov ss,ax
	mov sp,10h
	
	xor bx,bx
	mov ax,0b872h
	mov cx,3
s3:
	push ax
	push bx
	push cx
	
	mov es,ax
	mov si,0
	mov di,0
	
	mov cx,10h
s1:
	mov al,ds:[si]
	mov es:[di],al
	inc si
	add di,2
	loop s1
	
	mov di,1
	pop bx
	mov al,ds:10h[bx]
	inc bx
	mov cx,10h
s2:
	mov al,ds:[di]
	add di,2
	loop s2
	
	pop ax
	add ax,0ah
	
	pop cx
	loop s3
	
	mov ax,4c00h
	int 21h
codesg ends
end start
	
	