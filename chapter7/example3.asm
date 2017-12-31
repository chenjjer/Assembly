assume cs:codesg, ds:datasg

datasg segment
	db 'BaSiC'
	db 'MinIX'
datasg ends

codesg segment

start:
	mov ax,datasg
	mov ds,ax
	
	mov bx,0
	mov cx,5
s:
	mov al,[bx] //al,0[bx]
	and al,1101111b
	mov [bx],al
	mov al,[5+bx] //al,5[bx]
	or al,00100000b
 	mov [5+bx],al  //5[bx],al
	inc bx
	loop s 
codesg ends
end start

// the assembly has similar with c

char a[5] = "BaSiC";
char b[5] = "MinIX"

main()
{
	int i;
	i = 0;
	do {
	a[i] = a[i] & 0xDF;
	b[i] = b[i] & 0x20;
	i++;
	} while(i<5);
}
