assume cs:codesg, ds:datasg

datasg segment
	db 'welcome to masm!'
	db '................'
datasg ends

codesg segment
start:
	mov ax,datasg
	mov ds,ax
	
	mov bx,0
	mov cx,8
	mov si,0
	mov di,16
s:
	mov al,[si]
	mov [di],al  // may be we can replace code wit: 16[si],al
	add si,2
	add di,2   // delete the line
	loop s
	
	mov ax,4100h
	int 21h
codesg ends
end start