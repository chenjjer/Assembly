mov ax,seg
mov ds,ax
mov bx,60h

mov word ptr [bx+0ch],38
add word ptr [bx+oeh],70

mov si,0
mov byte ptr [bx+10+si],'V'
inc si
mov byte ptr [bx+10+si],'A'
inc si
mov byte ptr [bx+10+si],'X'
// the code with c language
struct company {
	char cn[3];
	char hn[9];
	int pm;
	int sr;
	char cp[3];
	};
struct company dec = {"DEC","Ken Olsen",137,40,"PDP"};

main()
{
	int i;
	dec.pm = 38;
	dec.sr = dec.sr + 70;
	i = 0;
	dec.cp[i] = 'V';
	i++;
	dec.cp[i] = 'A';
	i++;
	dec.cp[i] = 'X';
	return 0;
}
// according to the c rewrite the assembly language

mov word ptr [bx].0ch, 38
add word ptr [bx].0eh,70
mov si,0
mov byte ptr [bx].10h[si],'V'
inc si
mov byte ptr [bx].10h[si],'A'
inc si
mov byte ptr [bx].10h[si],'X'


