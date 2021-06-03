COMMENT ! Descripción del programa:
          Resta de 3 números
          Fecha: 28/05/2021
          Fernando Escalante Acuña
        !
.MODEL SMALL
.586
.STACK
.DATA
        mensaje DB 'Programa que resta tres numeros', 13, 10, '$'
        m1 DB 13, 10, 'Primer numero: $'
        m2 DB 13, 10, 'Segundo numero: $'
        m3 DB 13, 10, 'Tercer numero:  $'
        num1 DB '0'
        num2 DB '0'
        num3 DB '0'
        resultado DB '0'
        msgResultado DB 13,10, 'La resta es: $'   
.CODE
    mov ax, @data
            mov ds, ax
            mov dx, OFFSET mensaje
            mov ah, 9h   
            int 21h 
            ;solicitar del teclado numero 1
    mov ah, 09
    lea dx, m1
    int 21h
    mov ah, 01
    int 21h
    sub al, 30h
    mov num1,al
    ;solicitar del teclado numero 2
    mov ah, 09
    lea dx, m2
    int 21h
    mov ah, 01
    int 21h
    sub al, 30h
    mov num2,al
    ;Solicitar del teclado el número 3
    mov ah, 09
    lea dx, m3
    int 21h
    mov ah, 01
    int 21h
    sub al, 30h
    mov num3,al
    mov al,num1
    sub al,num2
    sub al,num3
    mov resultado,al
    mov ah,09
    lea dx,msgResultado
    int 21h
    mov dl,resultado
    add dl,30h 
    mov ah,02
    int 21h
            mov ax, 4c00h
            int 21h
END