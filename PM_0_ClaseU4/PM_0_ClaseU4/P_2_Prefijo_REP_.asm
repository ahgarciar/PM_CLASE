INCLUDE Irvine32.inc

.data
; �rea de Declaraci�n de Variables
origen db "Francisco", 0
destino db 20 dup ('?')


.code
main_2 PROC
; L�gica del Programa

;Mover datos de cadena: 
;copia los datos de la memoria direccionada por ESI a la memoria direccionada por EDI

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

mov ecx, sizeof origen
mov eax, ecx
call writedec
call crlf

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

mov esi, offset origen
mov edi, offset destino

;rep movsb ;repite movsb mientras que se cumpla ecx > 0

ciclo:
	movsb
	loop ciclo

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

mov edx, offset destino
call writestring
call crlf

exit

main_2 ENDP

END main_2
