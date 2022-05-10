INCLUDE Irvine32.inc

.data
; Área de Declaración de Variables
cadena1_4 db "GARUCO",0

.code
main_4 PROC
; Lógica del Programa

;SCASB
;Explorar cadena: compara el acumulador (AL, AX o EAX) con el contenido de la
;memoria direccionada por EDI

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
mov edi, offset cadena1_4
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

mov eax, 0
call readchar ; al
call writechar ; echo

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
mov ebx, 0 ; contador
mov ecx, sizeof cadena1_4

ciclo:
	inc ebx
	cmp ebx, ecx
	jz continuar
	scasb
	jnz ciclo

continuar: 

cmp ebx, ecx
jz no_encontrada

mov eax, ebx
jmp salir

no_encontrada:
	mov eax, 999

salir:
	call writedec

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;TAREA: ASEGURARSE QUE INGRESADA UNA LETRA MINUSCULA/MAYUSCULA, PUEDA BUSCAR LA LETRA SIN PROBLEMAS

;TAREA: ENCONTRAR TODAS LAS APARICIONES DE UNA MISMA LETRA INGRESADA POR EL USUARIO

exit

main_4 ENDP

END main_4
