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

;reservar localidad de memoria
nombre db ?;5 dup (65)  

.code
main6 PROC
; L�gica del Programa

mov ecx, 20 ; sizeof nombre ; maxima cantidad de caracteres a leer
mov edx, offset nombre

call readstring 

call writestring

call writedec 

exit

main6 ENDP

END main6
