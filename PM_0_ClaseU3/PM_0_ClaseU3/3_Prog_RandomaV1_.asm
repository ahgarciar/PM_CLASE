TITLE Introduccion

; DESCRPICI�N
; Objetivo: Archivo de Ejemplo
;
; Autore(s) :
	;         Mtro.Alejandro Garcia
	;		  Su Nombre.!
	;

; Semestre: 8vo Semestre ISC
; FIN DESCRIPCI�N

INCLUDE Irvine32.inc

.data
; �rea de Declaraci�n de Variables

.code
main3 PROC
; L�gica del Programa

;call randomize

mov ecx, 10

ciclo:
	call random32 ;eax
	call writeint
	call crlf
	loop ciclo





exit

main3 ENDP

END main3
