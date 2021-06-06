include emu8086.inc 

define_clear_screen
start: 

mov ah, 09h
mov dx, menu
int 21h    
 
getnum:       
mov ah, 7
int 21h       
cmp al, '1'  
je escrever 
cmp al, '2'
je mostrar 
cmp al, '3'
je limpar
cmp al,'4'
je meses 
cmp al, '5'
je creditos 
cmp al, '6'
je sair_
jl getnum  
cmp al, '9'
jg getnum  



;Mostrar tarefas
mostrar:
call clear_screen

lea bx,T1

MOV DL, [bx]
cmp dl, '.' 
je vazia 
cmp dl, ' '
je vazia 
cmp dl, '0'
je vazia 

mov ah,9 
lea dx,msg3
int 21h  

mov ah,9 
lea dx, paragrafo
int 21h

mov ah,9 
lea dx, um
int 21h 

gotoxy 3,2
lea bx,T1
mov cx, 30    
mostrar1: 

Mov AH,2 
MOV DL, [bx]
int 21h 
inc bx 
cmp al,0Dh          
loopne mostrar1

mov ah,9 
lea dx, paragrafo
int 21h

mov ah,9 
lea dx, dois
int 21h 

gotoxy 3,3 

lea bx,T2
mov cx, 30
    
mostrar2:

Mov AH,2 
MOV DL, [bx]
cmp dl, '.'
je acabarmostrar
int 21h 
inc bx    
cmp al,0Dh          
loopne mostrar2

mov ah,9 
lea dx, paragrafo
int 21h 

mov ah,9 
lea dx, tres
int 21h 

gotoxy 3,4
lea bx,T3
mov cx, 30
    
mostrar3:  

Mov AH,2 
MOV DL, [bx]
cmp dl, '.'
je acabarmostrar
int 21h
inc bx 
cmp al,0Dh          
loopne mostrar3   

mov ah,9 
lea dx, paragrafo
int 21h

mov ah,9 
lea dx, quatro
int 21h 

gotoxy 3,5 

lea bx,T4
mov cx, 30
    
mostrar4:

Mov AH,2 
MOV DL, [bx]
cmp dl, '.'
je acabarmostrar
int 21h 
inc bx 
cmp al,0Dh          
loopne mostrar4 

mov ah,9 
lea dx, paragrafo
int 21h

mov ah,9 
lea dx, cinco
int 21h 

gotoxy 3,6 

lea bx,T5
mov cx, 30
    
mostrar5:   

Mov AH,2 
MOV DL, [bx]
cmp dl, '.'
je acabarmostrar
int 21h
inc bx 
cmp al,0Dh          
loopne mostrar5 

mov ah,9 
lea dx, paragrafo
int 21h

mov ah,9 
lea dx, seis
int 21h 

gotoxy 3,7

lea bx,T6
mov cx, 30
    
mostrar6:

Mov AH,2 
MOV DL, [bx]
cmp dl, '.'
je acabarmostrar
int 21h 
inc bx 
cmp al,0Dh          
loopne mostrar6

mov ah,9 
lea dx, paragrafo
int 21h

mov ah,9 
lea dx, sete
int 21h 

gotoxy 3,8 

lea bx,T7
mov cx, 30
    
mostrar7: 

Mov AH,2 
MOV DL, [bx] 
cmp dl, '.'
je acabarmostrar
int 21h
inc bx 
cmp al,0Dh          
loopne mostrar7 

mov ah,9 
lea dx, paragrafo
int 21h  

mov ah,9 
lea dx, oito
int 21h 

gotoxy 3,9

lea bx,T8
mov cx, 30
    
mostrar8: 

Mov AH,2 
MOV DL, [bx] 
cmp dl, '.'
je acabarmostrar
int 21h
inc bx 
cmp al,0Dh          
loopne mostrar8 

mov ah,9 
lea dx, paragrafo
int 21h 

mov ah,9 
lea dx, nove
int 21h 

gotoxy 3,10

lea bx,T9
mov cx, 30
    
mostrar9:

Mov AH,2 
MOV DL, [bx]
cmp dl, '.'
je acabarmostrar
int 21h 
inc bx 
cmp al,0Dh          
loopne mostrar9  
 
mov ah,9 
lea dx, paragrafo
int 21h 

mov ah,1
int 21h 
call clear_screen 
jmp start

acabarmostrar:
mov ah,9 
lea dx, paragrafo
int 21h 
mov ah,1
int 21h 
call clear_screen 
jmp start
ret 

vazia:
mov ah,9 
lea dx, empty
int 21h 
mov ah,1
int 21h
jmp acabar 

escrever:
call clear_screen   
mov ah,9 
lea dx, msg1
int 21h 
 
mov ah,9 
lea dx, msg2
int 21h 

mov ah,9 
lea dx, msg3
int 21h

mov ah,9 
lea dx, msg4
int 21h 

mov ah,9 
lea dx, sair
int 21h         


;####################
;T1

mov ah,9 
lea dx, tarefa
int 21h 

LEA bx, T1
mov cx, 30

inicio1:

Mov AH,1
Int 21H 
MOV [BX], Al
inc bx 
cmp al, '.'
je acabar 
cmp al,0Dh 
loopne inicio1 

mov ah,9 
lea dx, duploparagrafo
int 21h
         

mov ah,9 
lea dx, msg5
int 21h

 
;##################
;T2
LEA bx, T2
mov cx, 30

inicio2:

Mov AH,1
Int 21H 
MOV [BX], Al
inc bx
cmp al, '.'
je acabar 
cmp al,0Dh 
loopne inicio2 

mov ah,9 
lea dx, duploparagrafo
int 21h  
         
mov ah,9 
lea dx, msg5
int 21h 

;T3
LEA bx, T3
mov cx, 30

inicio3:

Mov AH,1
Int 21H 
MOV [BX], Al
inc bx 
cmp al, '.'
je acabar
cmp al,0Dh 
loopne inicio3 

mov ah,9 
lea dx, duploparagrafo
int 21h  

mov ah,9 
lea dx, msg5
int 21h 

;T4
LEA bx, T4
mov cx, 30

inicio4:

Mov AH,1
Int 21H 
MOV [BX], Al
inc bx 
cmp al, '.'
je acabar
cmp al,0Dh 
loopne inicio4 
   
mov ah,9 
lea dx, duploparagrafo
int 21h  
         
mov ah,9 
lea dx, msg5
int 21h 

;T5
LEA bx, T5
mov cx, 30

inicio5:

Mov AH,1
Int 21H 
MOV [BX], Al
inc bx
cmp al, '.'
je acabar 
cmp al,0Dh 
loopne inicio5 
   
mov ah,9 
lea dx, duploparagrafo
int 21h 
         
mov ah,9 
lea dx, msg5
int 21h  

;T6
LEA bx, T6
mov cx, 30

inicio6:

Mov AH,1
Int 21H 
MOV [BX], Al
inc bx
cmp al, '.'
je acabar 
cmp al,0Dh 
loopne inicio6 
   
mov ah,9 
lea dx, duploparagrafo
int 21h 
         
mov ah,9 
lea dx, msg5
int 21h  

;T7
LEA bx, T7
mov cx, 30

inicio7:

Mov AH,1
Int 21H 
MOV [BX], Al
inc bx     
cmp al, '.'
je acabar
cmp al,0Dh 
loopne inicio7 
   
mov ah,9 
lea dx, duploparagrafo
int 21h 
         
mov ah,9 
lea dx, msg5
int 21h 

;T8
LEA bx, T8
mov cx, 30

inicio8:

Mov AH,1
Int 21H 
MOV [BX], Al
inc bx 
cmp al, '.'
je acabar
cmp al,0Dh 
loopne inicio8 
   
mov ah,9 
lea dx, duploparagrafo
int 21h
         
mov ah,9 
lea dx, msg5
int 21h  

;T9
LEA bx, T9
mov cx, 30

inicio9:

Mov AH,1
Int 21H 
MOV [BX], Al
inc bx
cmp al, '.'
je acabar 
cmp al,0Dh 
loopne inicio9 
   
mov ah,9 
lea dx, duploparagrafo
int 21h 

jmp acabar
         
limpar:  
call clear_screen
mov ah,9
lea dx, qual
int 21h

mov ah,9
lea dx,todas
int 21h

mov ah,1
int 21h
cmp al,'1'
je apenas1
cmp al, '2'
je apenas2
cmp al, '3'
je apenas3
cmp al,'4'
je apenas4
cmp al, '5'
je apenas5
cmp al, '6'
je apenas6
cmp al, '7'
je apenas7
cmp al,'8'
je apenas8
cmp al, '9'
je apenas9
cmp al, '0'
je apagartodas
cmp al, '.'
je acabar
jl limpar  
cmp al, '9'
jg limpar

apenas1:
mov cx,30 
mov si,0
L1:
mov T1[si],0
inc si
loop l1
jmp acabar

apenas2:
mov cx,30 
mov si,0
L2:
mov T2[si],0
inc si
loop l2
jmp acabar

apenas3:
mov cx,30 
mov si,0
L3:
mov T3[si],0
inc si
loop l3
jmp acabar 

apenas4:
mov cx,30 
mov si,0
L4:
mov T4[si],0
inc si
loop l4
jmp acabar

apenas5:
mov cx,30 
mov si,0
L5:
mov T5[si],0
inc si
loop l5
jmp acabar

apenas6:
mov cx,30 
mov si,0
L6:
mov T6[si],0
inc si
loop l6
jmp acabar

apenas7:
mov cx,30 
mov si,0
L7:
mov T7[si],0
inc si
loop l7
jmp acabar

apenas8:
mov cx,30 
mov si,0
L8:
mov T8[si],0
inc si
loop l8
jmp acabar

apenas9:
mov cx,30 
mov si,0
L9:
mov T9[si],0
inc si
loop l9
jmp acabar

apagartodas: 

mov cx,30 
mov si,0
c1:
mov T1[si],0
inc si
loop c1

mov cx,30 
mov si,0
c2:
mov T2[si],0
inc si
loop c2

mov cx,30 
mov si,0
c3:
mov T3[si],0
inc si
loop c3

mov cx,30 
mov si,0
c4:
mov T4[si],0
inc si
loop c4

mov cx,30 
mov si,0
c5:
mov T5[si],0
inc si
loop c5

mov cx,30 
mov si,0
c6:
mov T6[si],0
inc si
loop c6

mov cx,30 
mov si,0
c7:
mov T7[si],0
inc si
loop c7

mov cx,30 
mov si,0
c8:
mov T8[si],0
inc si
loop c8

mov cx,30 
mov si,0
c9:
mov T9[si],0
inc si
loop c9
jmp acabar


creditos:
call clear_screen    
mov ah, 09h
mov dx, cred
int 21h 
mov ah,1
int 21h
call clear_screen
jmp start




acabar: 
call clear_screen 
jmp start
ret  

sair_:
ret



meses:
call clear_screen 

mov ah, 09h
lea dx, janeiro1
int 21h        
gotoxy 10,0
mov ah,9h
lea dx, fevereiro1
int 21h 
gotoxy 25,0
mov ah,9h
lea dx, marco1
int 21h 
gotoxy 0,1
mov ah,9h
lea dx, abril1
int 21h 
gotoxy 10,1
mov ah,9h
lea dx, maio1
int 21h 
gotoxy 20,1
mov ah,9h
lea dx, junho1
int 21h
gotoxy 0,2
mov ah,9h
lea dx, julho1
int 21h 
gotoxy 10,2
mov ah,9h
lea dx, agosto1
int 21h 
gotoxy 20,2
mov ah,9h
lea dx, setembro1
int 21h 
gotoxy 0,3
mov ah,9h
lea dx, outubro1
int 21h 
gotoxy 11,3
mov ah,9h
lea dx, novembro1
int 21h 
gotoxy 25,3
mov ah,9h
lea dx, dezembro1
int 21h

mov ah,9 
lea dx, paragrafo
int 21h  

mov ah,9
lea dx, sair
int 21h

  mov ah,1
  int 21h
  cmp al, '1'
  je janeiro 
  cmp al, '2'
  je fevereiro 
  cmp al, '3'
  je marco
  cmp al, '4'
  je abril  
  cmp al, '5'
  je maio
  cmp al, '6'
  je junho
  cmp al, '7'
  je julho  
  cmp al, '8'
  je agosto 
  cmp al, '9'
  je setembro
  cmp al, 'a'
  je novembro
  cmp al, 'b'
  je dezembro 
  cmp al, '0'
  je dezembro 
  cmp al, '.'
  je acabar
  jl meses  
  cmp al, '9'
  jg meses 
    
 
  
  janeiro: 
  call clear_screen 
  mov al,0
  mov  ah,13h ;SERVICE TO DISPLAY STRING WITH COLOR.
  mov  bp,offset Jan ;STRING TO DISPLAY.
  mov  bh,0 ;PAGE (ALWAYS ZERO).
  mov  bl,color1
  mov  cx,201 ;STRING LENGTH.
  mov  dl,0 ;X (SCREEN COORDINATE). 
  mov  dh,0 ;Y (SCREEN COORDINATE). 
  int  10h ;BIOS SCREEN SERVICES. 
  mov ah,1
  int 21h
  call clear_screen
  jmp meses

  
  fevereiro:   
  mov al,0
  call clear_screen 
  mov  ah,13h ;SERVICE TO DISPLAY STRING WITH COLOR.
  mov  bp,offset Fev ;STRING TO DISPLAY.
  mov  bh,0 ;PAGE (ALWAYS ZERO).
  mov  bl,color2
  mov  cx,200 ;STRING LENGTH.
  mov  dl,0 ;X (SCREEN COORDINATE). 
  mov  dh,0 ;Y (SCREEN COORDINATE). 
  int  10h ;BIOS SCREEN SERVICES. 
  mov ah,1
  int 21h
  call clear_screen
  jmp meses
   
  marco:   
  mov al,0
  call clear_screen 
  mov  ah,13h ;SERVICE TO DISPLAY STRING WITH COLOR.
  mov  bp,offset Mar ;STRING TO DISPLAY.
  mov  bh,0 ;PAGE (ALWAYS ZERO).
  mov  bl,color3
  mov  cx,200 ;STRING LENGTH.
  mov  dl,0 ;X (SCREEN COORDINATE). 
  mov  dh,0 ;Y (SCREEN COORDINATE). 
  int  10h ;BIOS SCREEN SERVICES. 
  mov ah,1
  int 21h
  call clear_screen
  jmp meses 
  
  abril:   
  mov al,0
  call clear_screen 
  mov  ah,13h ;SERVICE TO DISPLAY STRING WITH COLOR.
  mov  bp,offset Abr ;STRING TO DISPLAY.
  mov  bh,0 ;PAGE (ALWAYS ZERO).
  mov  bl,color4
  mov  cx,200 ;STRING LENGTH.
  mov  dl,0 ;X (SCREEN COORDINATE). 
  mov  dh,0 ;Y (SCREEN COORDINATE). 
  int  10h ;BIOS SCREEN SERVICES. 
  mov ah,1
  int 21h
  call clear_screen
  jmp meses 
  
  maio:   
  mov al,0
  call clear_screen 
  mov  ah,13h ;SERVICE TO DISPLAY STRING WITH COLOR.
  mov  bp,offset Mai ;STRING TO DISPLAY.
  mov  bh,0 ;PAGE (ALWAYS ZERO).
  mov  bl,color5
  mov  cx,200 ;STRING LENGTH.
  mov  dl,0 ;X (SCREEN COORDINATE). 
  mov  dh,0 ;Y (SCREEN COORDINATE). 
  int  10h ;BIOS SCREEN SERVICES. 
  mov ah,1
  int 21h
  call clear_screen
  jmp meses
  
  junho:   
  mov al,0
  call clear_screen 
  mov  ah,13h ;SERVICE TO DISPLAY STRING WITH COLOR.
  mov  bp,offset Jun ;STRING TO DISPLAY.
  mov  bh,0 ;PAGE (ALWAYS ZERO).
  mov  bl,color6
  mov  cx,200 ;STRING LENGTH.
  mov  dl,0 ;X (SCREEN COORDINATE). 
  mov  dh,0 ;Y (SCREEN COORDINATE). 
  int  10h ;BIOS SCREEN SERVICES. 
  mov ah,1
  int 21h
  call clear_screen
  jmp meses 
  
  julho:   
  mov al,0
  call clear_screen 
  mov  ah,13h ;SERVICE TO DISPLAY STRING WITH COLOR.
  mov  bp,offset Jul ;STRING TO DISPLAY.
  mov  bh,0 ;PAGE (ALWAYS ZERO).
  mov  bl,color7
  mov  cx,200 ;STRING LENGTH.
  mov  dl,0 ;X (SCREEN COORDINATE). 
  mov  dh,0 ;Y (SCREEN COORDINATE). 
  int  10h ;BIOS SCREEN SERVICES. 
  mov ah,1
  int 21h
  call clear_screen
  jmp meses 
  
  agosto:   
  mov al,0
  call clear_screen 
  mov  ah,13h ;SERVICE TO DISPLAY STRING WITH COLOR.
  mov  bp,offset Ago ;STRING TO DISPLAY.
  mov  bh,0 ;PAGE (ALWAYS ZERO).
  mov  bl,color8
  mov  cx,200 ;STRING LENGTH.
  mov  dl,0 ;X (SCREEN COORDINATE). 
  mov  dh,0 ;Y (SCREEN COORDINATE). 
  int  10h ;BIOS SCREEN SERVICES. 
  mov ah,1
  int 21h
  call clear_screen
  jmp meses
  
  setembro:   
  mov al,0
  call clear_screen 
  mov  ah,13h ;SERVICE TO DISPLAY STRING WITH COLOR.
  mov  bp,offset Set ;STRING TO DISPLAY.
  mov  bh,0 ;PAGE (ALWAYS ZERO).
  mov  bl,color9
  mov  cx,200 ;STRING LENGTH.
  mov  dl,0 ;X (SCREEN COORDINATE). 
  mov  dh,0 ;Y (SCREEN COORDINATE). 
  int  10h ;BIOS SCREEN SERVICES. 
  mov ah,1
  int 21h
  call clear_screen
  jmp meses
  
  outubro:   
  mov al,0
  call clear_screen 
  mov  ah,13h ;SERVICE TO DISPLAY STRING WITH COLOR.
  mov  bp,offset Outu ;STRING TO DISPLAY.
  mov  bh,0 ;PAGE (ALWAYS ZERO).
  mov  bl,color10
  mov  cx,200 ;STRING LENGTH.
  mov  dl,0 ;X (SCREEN COORDINATE). 
  mov  dh,0 ;Y (SCREEN COORDINATE). 
  int  10h ;BIOS SCREEN SERVICES. 
  mov ah,1
  int 21h
  call clear_screen
  jmp meses 
  
  novembro:   
  mov al,0
  call clear_screen 
  mov  ah,13h ;SERVICE TO DISPLAY STRING WITH COLOR.
  mov  bp,offset Nov ;STRING TO DISPLAY.
  mov  bh,0 ;PAGE (ALWAYS ZERO).
  mov  bl,color11
  mov  cx,200 ;STRING LENGTH.
  mov  dl,0 ;X (SCREEN COORDINATE). 
  mov  dh,0 ;Y (SCREEN COORDINATE). 
  int  10h ;BIOS SCREEN SERVICES. 
  mov ah,1
  int 21h
  call clear_screen
  jmp meses  
  
  dezembro:   
  mov al,0
  call clear_screen 
  mov  ah,13h ;SERVICE TO DISPLAY STRING WITH COLOR.
  mov  bp,offset De ;STRING TO DISPLAY.
  mov  bh,0 ;PAGE (ALWAYS ZERO).
  mov  bl,color12
  mov  cx,200 ;STRING LENGTH.
  mov  dl,0 ;X (SCREEN COORDINATE). 
  mov  dh,0 ;Y (SCREEN COORDINATE). 
  int  10h ;BIOS SCREEN SERVICES. 
  mov ah,1
  int 21h
  call clear_screen
  jmp meses
  
  


menu:
     db " =================== ",13,10
     db "||                  ||",13,10
     db "||   A sua agenda!  ||",13,10
     db "||       2020       ||",13,10
     db "||                  ||",13,10, 
     db " =================== ",13,10,10
     db "Seleciona a opcao:",13,10   
     db "1-Escrever na agenda;",13,10 
     db "2-Mostrar agenda;",13,10 
     db "3-Limpar tarefas;",13,10 
     db "4-Mostrar meses;",13,10
     db "5-Creditos;",13,10 
     db "6-Sair;",13,10   
     db '$'
paragrafo  DB 13,10, '$'
duploparagrafo db 13,10,10, '$'  
msg1 db 'A sua agenda para hoje:',13,10, '$'
msg2 db 'Insira a tarefa deste modo:',13,10, '$'
msg3 db 'horas de inicio,duracao,tarefa,local',13,10, '$' 
msg4 db 'Exemplo:09(h),02(h),aula,Engenharias1',13,10,10,'$' 
sair db 'Pressione "." para sair"',13,10,10, '$'
msg5 db 'Seguinte tarefa:',13,10, '$' 
empty db 'Lista vazia',13,10,10, '$' 
tarefa db 'Primeira tarefa:',13,10, '$' 
parasair db 'Prima "0" para voltar para o menu inicial!' ,13,10, '$'
qual db 'Insira qual tarefa quer apagar',13,10, '$'
todas db 'Apagar todas insira "0"',13,10, '$'

um db '1-', '$' 
dois db '2-', '$'
tres db '3-', '$'
quatro db '4-', '$'
cinco  db '5-', '$'
seis db '6-', '$'
sete db '7-', '$'
oito db '8-', '$'
nove db '9-', '$'
dez db '10-', '$'

cred: db 'Trabalho feito por:',13,10
      db ' Hugo Anes n 68571',13,10 
      db 'Arquitetura de Computadores',13,10
      db 'Universidade tras os montes e alto douro ',13,10 
      db '$'

janeiro1 db "1-Janeiro", "$"
fevereiro1 db "2-Fevereiro","$" 
marco1 db "3-Marco", "$" 
Abril1 db "4-Abril", "$"
Maio1 db "5-Maio", "$"
Junho1 db "6-Junho", "$"
Julho1 db "7-Julho", "$"
Agosto1 db "8-Agosto", "$"
Setembro1 db "9-Setembro", "$"
Outubro1 db "10-Outubro", "$"
Novembro1 db "a-Novembro", "$"
Dezembro1 db "b-Dezembro", "$"
  



T1 db 50 dup(' ') 
T2 db 50 dup(' ')
T3 db 50 dup(' ')
T4 db 50 dup(' ')
T5 db 50 dup(' ')
T6 db 50 dup(' ')
T7 db 50 dup(' ')
T8 db 50 dup(' ')
T9 db 50 dup(' ')
 

  Jan db  "         Janeiro           ",13,10 
      db  "Dom Seg Ter Qua Qui Sex Sab",13,10 
      db  "            1   2   3   4  ",13,10 
      db  "5   6   7   8   9   10  11 ",13,10 
      db  "12  13  14  15  16  17  18 ",13,10 
      db  "19  20  21  22  23  24  25 ",13,10 
      db  "26  27  28  29  30  31     "
            
color1 db 181

  Fev db  "         Fevereiro         ",13,10 
      db  "Dom Seg Ter Qua Qui Sex Sab",13,10 
      db  "                        1  ",13,10 
      db  "2   3   4   5   6   7   8  ",13,10 
      db  "9   10  11  12  13  14  15 ",13,10 
      db  "16  17  18  19  20  21  22 ",13,10 
      db  "23  24  25  26  27  28  29   "       
color2 db 181
   
Mar   db  "         Marco             ",13,10 
      db  "Dom Seg Ter Qua Qui Sex Sab",13,10 
      db  "1   2   3   4   5   6   7  ",13,10 
      db  "8   9   10  11  12  13  14 ",13,10 
      db  "15  16  17  18  19  20  21 ",13,10 
      db  "22  23  24  25  26  27  28 ",13,10 
      db  "29  30  31                 "       
color3 db 181 

Abr   db  "         Abril             ",13,10 
      db  "Dom Seg Ter Qua Qui Sex Sab",13,10 
      db  "            1   2   3   4  ",13,10 
      db  "5   6   7   8   9   10  11 ",13,10 
      db  "12  13  14  15  16  17  18 ",13,10 
      db  "19  20  21  22  23  24  25 ",13,10 
      db  "26  27  28  29  30         "       
color4 db 181 
                       
Mai   db  "          Maio             ",13,10 
      db  "Dom Seg Ter Qua Qui Sex Sab",13,10 
      db  "                    1   2  ",13,10 
      db  "3   4   5   6   7   8   9  ",13,10 
      db  "10  11  12  13  14  15  16 ",13,10 
      db  "17  18  19  20  21  22  23 ",13,10 
      db  "24  25  26  27  28  29  30 ",13,10
      db  "31                         "       
color5 db 181

Jun   db  "         Junho             ",13,10 
      db  "Dom Seg Ter Qua Qui Sex Sab",13,10 
      db  "    1   2   3   4   5   6  ",13,10 
      db  "7   8   9   10  11  12  13 ",13,10 
      db  "14  15  16  17  18  19  20 ",13,10 
      db  "21  22  23  24  25  26  27 ",13,10 
      db  "28  29  30                 "       
color6 db 181 

Jul   db  "         Julho             ",13,10 
      db  "Dom Seg Ter Qua Qui Sex Sab",13,10 
      db  "            1   2   3   4  ",13,10 
      db  "5   6   7   8   9   10  11  ",13,10 
      db  "12  13  14  15  16  17  18 ",13,10 
      db  "19  20  21  22  23  24  25 ",13,10 
      db  "26  27  28  29  30  31     "       
color7 db 181

Ago   db  "         Agosto            ",13,10 
      db  "Dom Seg Ter Qua Qui Sex Sab",13,10 
      db  "                        1  ",13,10 
      db  "2   3   4   5   6   7   8  ",13,10 
      db  "9   10  11  12  13  14  15 ",13,10 
      db  "16  17  18  19  20  21  22 ",13,10 
      db  "23  24  25  26  27  28  29 ",13,10
      db  "30  31                     "
color8 db 181 

Set   db  "         Setembro          ",13,10 
      db  "Dom Seg Ter Qua Qui Sex Sab",13,10 
      db  "        1   2   3   4   5  ",13,10 
      db  "6   7   8   9   10  11  12 ",13,10 
      db  "13  14  15  16  17  18  19 ",13,10 
      db  "20  21  22  23  24  25  26 ",13,10 
      db  "27  28  29  30             "       
color9 db 181

Outu  db  "         Outubro           ",13,10 
      db  "Dom Seg Ter Qua Qui Sex Sab",13,10 
      db  "                1   2   3  ",13,10 
      db  "4   5   6   7   8   9   10 ",13,10 
      db  "11  12  13  14  15  16  17 ",13,10 
      db  "18  19  20  21  22  23  24 ",13,10 
      db  "25  26  27  28  29  30  31   "       
color10 db 181

Nov   db  "         Novembro          ",13,10 
      db  "Dom Seg Ter Qua Qui Sex Sab",13,10 
      db  "1   2   3   4   5   6   7  ",13,10 
      db  "8   9   10  11  12  13  14 ",13,10 
      db  "15  16  17  18  19  20  21 ",13,10 
      db  "22  23  24  25  26  27  28 ",13,10 
      db  "29  30                     "       
color11 db 181
              
De   db   "         Dezembro          ",13,10 
      db  "Dom Seg Ter Qua Qui Sex Sab",13,10 
      db  "        1   2   3   4   5  ",13,10 
      db  "6   7   8   9   10  11  12 ",13,10 
      db  "13  14  15  16  17  18  19 ",13,10 
      db  "20  21  22  23  24  25  26 ",13,10 
      db  "27  28  29  30  31         "       
color12 db 181
