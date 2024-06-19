data segment
    
 data ends
spile segment para stack
    db 256 dup(?)
    bpile EQU THIS word
spile ends 
assume ds:data, cs:code, ss:spile
code segment
    
    time proc near
    mov cx,03h
        mov dx,4240h  
        mov ah,86h
        int 15h
        ret
        time endp
    defmod proc near
    mov ah,0
    int 10h
    ret
    defmod endp
    putPixel proc near
    mov ah,12
    int 10h
    ret
    putPixel endp
    drawhl proc near
    add si,cx
    enp : call putPixel
          inc cx
          cmp cx,si
          jl enp
          ret 
    drawhl endp
    drawvl proc near
          add si,dx
          envp: call putPixel
          inc dx
          cmp dx,si
          jl envp
          ret
    drawvl endp
    
  drawbi proc near
  add si,cx
            enpp :  call putpixel
                    inc cx
                    inc dx
                    cmp cx,si
                   
                    jl enpp
                   ret
                  
                   drawbi endp
         drawbii proc near
               add si,cx
            enppp :  call putpixel
            inc cx
            dec dx
                    cmp cx,si
                   
                    jl enppp
                   ret
                  
                  
                   drawbii endp
                   
 main:
mov ax,data
mov ds,ax
mov al,13h
call defmod
mov al,13
MOV cx,10
mov dx,30
mov si,40
call drawhl
mov al,10
MOV cx,10
mov dx,30
mov si,40
call drawvl
mov al,9
MOV cx,50
mov dx,30
mov si,40
call drawvl
mov al,14
MOV cx,10
mov dx,70
mov si,40
call drawhl
mov al,11
MOV cx,25
mov dx,60
mov si,14
call drawhl
mov al,11
MOV cx,40
mov dx,40
mov si,10
call drawvl
mov al,11
MOV cx,20
mov dx,40
mov si,10
call drawvl
mov al,11
MOV cx,25
mov dx,56
mov si,14
call drawhl

mov al,13
mov cx,30
mov dx,70
mov si,50
call drawvl
mov al,11
mov cx,30
mov dx,90
mov si,22
call drawbi
mov al,11
mov cx,30
mov dx,120
mov si,30
call drawbi
mov al,11
mov cx,10
mov dx,140
mov si,20
call drawbii
mov al,11
mov cx,10
mov dx,110
mov si,20
call drawbii
mov cx,01h
mov dx,4240h  
mov ah,86h
int 15h
mov al,0
MOV cx,10
mov dx,30
mov si,40
call drawhl
mov al,0
MOV cx,10
mov dx,30
mov si,40
call drawvl
mov al,0
MOV cx,50
mov dx,30
mov si,40
call drawvl
mov al,0
MOV cx,10
mov dx,70
mov si,40
call drawhl
mov al,0
MOV cx,25
mov dx,60
mov si,14
call drawhl
mov al,0
MOV cx,40
mov dx,40
mov si,10
call drawvl
mov al,0
MOV cx,20
mov dx,40
mov si,10
call drawvl
mov al,0
MOV cx,25
mov dx,56
mov si,14
call drawhl

mov al,0
mov cx,30
mov dx,70
mov si,50
call drawvl
mov al,0
mov cx,30
mov dx,90
mov si,22
call drawbi
mov al,0
mov cx,30
mov dx,120
mov si,30
call drawbi
mov al,0
mov cx,10
mov dx,140
mov si,20
call drawbii
mov al,0
mov cx,10
mov dx,110
mov si,20
call drawbii 





mov al,13
mov cx,90
mov dx,35
mov si,30
call drawbi

mov al,14
mov cx,55
mov dx,70
mov si,30
call drawbi

mov al,11
mov cx,54
mov dx,68
mov si,35
call drawbii

mov al,11
mov cx,84
mov dx,99
mov si,35
call drawbii

mov al,13
mov cx,70
mov dx,84
mov si,50
call drawvl

mov al,14
mov cx,70
mov dx,100
mov si,25
call drawbi

mov al,11
mov cx,50
mov dx,80
mov si,25
call drawbi

mov al,11
MOV cx,45
mov dx,133
mov si,25
call drawhl

mov al,11
mov cx,70
mov dx,133
mov si,20
call drawbi
call time









 mov al,0
mov cx,90
mov dx,35
mov si,30
call drawbi

mov al,0
mov cx,55
mov dx,70
mov si,30
call drawbi

mov al,0
mov cx,54
mov dx,68
mov si,35
call drawbii

mov al,0
mov cx,84
mov dx,99
mov si,35
call drawbii

mov al,0
mov cx,70
mov dx,84
mov si,50
call drawvl

mov al,0
mov cx,70
mov dx,100
mov si,25
call drawbi

mov al,0
mov cx,50
mov dx,80
mov si,25
call drawbi

mov al,0
MOV cx,45
mov dx,133
mov si,30
call drawhl

mov al,0
mov cx,70
mov dx,133
mov si,34
call drawbi












mov al,13
MOV cx,140
mov dx,100
mov si,40
call drawhl
mov al,10
MOV cx,140
mov dx,100
mov si,40
call drawvl
mov al,9
MOV cx,180
mov dx,100
mov si,40
call drawvl
mov al,14
MOV cx,140
mov dx,140
mov si,40
call drawhl

mov al,13
mov cx,160
mov dx,50
mov si,50
call drawvl

mov al,14
mov cx,135
mov dx,25
mov si,25
call drawbi

mov al,14
mov cx,160
mov dx,48
mov si,25
call drawbii

mov al,11
mov cx,160
mov dx,70
mov si,25
call drawhl

mov al,11
mov cx,135
mov dx,46
mov si,25
call drawbi

call time 







mov al,0
MOV cx,140
mov dx,100
mov si,40
call drawhl
mov al,0
MOV cx,140
mov dx,100
mov si,40
call drawvl
mov al,0
MOV cx,180
mov dx,100
mov si,40
call drawvl
mov al,0
MOV cx,140
mov dx,140
mov si,40
call drawhl

mov al,0
mov cx,160
mov dx,50
mov si,50
call drawvl

mov al,0
mov cx,135
mov dx,25
mov si,25
call drawbi

mov al,0
mov cx,160
mov dx,48
mov si,25
call drawbii

mov al,0
mov cx,160
mov dx,70
mov si,25
call drawhl

mov al,0
mov cx,135
mov dx,46
mov si,25
call drawbi






mov al,13
mov cx,188
mov dx,120
mov si,30
call drawbi

mov al,14
mov cx,220
mov dx,90
mov si,30
call drawbi

mov al,11
mov cx,219
mov dx,149
mov si,30
call drawbii

mov al,11
mov cx,189
mov dx,119
mov si,32
call drawbii

mov al,13
mov cx,233
mov dx,105
mov si,55
call drawbii

mov al,11
mov cx,255
mov dx,64
mov si,20
call drawvl

mov al,11
mov cx,255
mov dx,82
mov si,13
call drawbi

mov al,11
mov cx,278
mov dx,62
mov si,13
call drawbi
; safaa kaba


code ends
end main                  
                   
                   