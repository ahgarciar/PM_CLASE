INCLUDE Irvine32.inc

.data
; Área de Declaración de Variables
cadena1_3 db "GARUCO",0
cadena2_3 db "GARURS",0


.code
main_3 PROC
; Lógica del Programa

;CMPSB
;Comparar cadenas: compara el contenido de dos ubicaciones de memoria direccionadas
;por ESI y EDI

;Las instrucciones CMPSB, CMPSW y CMPSD comparan un operando de memoria al que apunta ESI, con
;un operando de memoria al que apunta EDI
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

mov esi, offset cadena1_3
mov edi, offset cadena2_3

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

mov ecx, sizeof cadena1_3

ciclo:
	dec ecx	
	cmp ecx, 0
	jz continuar
	cmpsb ; comparacion
	jz ciclo	

continuar:

mov eax, ecx
call writedec

; TAREA: Determinar el indice en que se encuentra la primer aletra que no es igual

exit

main_3 ENDP

END main_3
