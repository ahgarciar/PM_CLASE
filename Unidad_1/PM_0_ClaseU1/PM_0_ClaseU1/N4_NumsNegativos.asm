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
varCheckEndian1_4 word -220
varCheckEndian2_4 sword -220

.code
main4 PROC
; Lógica del Programa

mov eax, 0 ;limpiar el registro eax

mov ax, -220

exit

main4 ENDP

END main4
