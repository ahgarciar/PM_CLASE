TITLE Introduccion

; DESCRPICIÓN
; Objetivo: Archivo de Ejemplo
;
; Autore(s) :
	;         Mtro.Alejandro Garcia
	;		  Su Nombre.!
	;

; Semestre: 8vo Semestre ISC
; FIN DESCRIPCIÓN

INCLUDE Irvine32.inc

.data
; Área de Declaración de Variables

.code
main3 PROC
; Lógica del Programa

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
