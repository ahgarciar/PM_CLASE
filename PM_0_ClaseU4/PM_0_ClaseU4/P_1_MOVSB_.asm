INCLUDE Irvine32.inc

.data
; Área de Declaración de Variables
origen db "Francisco", 0
destino db 20 dup ('?')


.code
main_1 PROC
; Lógica del Programa

;Mover datos de cadena: 
;copia los datos de la memoria direccionada por ESI a la memoria direccionada por EDI

mov edx, offset origen
call writestring
call crlf

mov edx, offset destino
call writestring
call crlf

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

mov ecx, sizeof origen
mov eax, ecx
call writedec
call crlf

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

mov esi, offset origen
mov edi, offset destino

movsb
movsb
movsb

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

mov edx, offset destino
call writestring
call crlf

exit

main_1 ENDP

END main_1
