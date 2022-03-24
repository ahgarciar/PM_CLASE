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

;reservar localidad de memoria
nombre db ?;5 dup (65)  

.code
main6 PROC
; Lógica del Programa

mov ecx, 20 ; sizeof nombre ; maxima cantidad de caracteres a leer
mov edx, offset nombre

call readstring 

call writestring

call writedec 

exit

main6 ENDP

END main6
