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
titulo_p7 db "Este es el titulo",0

cuerpo_msj_p7 db "Primera linea", 0dh, 0ah
			  db "Segunda linea", 13, 10

	varX_p7 byte 65

			  db "Tercera linea", 13d, 10d, 13, 10
			  db "Cuarta Lineaa", 0

.code
main7 PROC
; L�gica del Programa

mov ebx, offset titulo_p7
mov edx, offset cuerpo_msj_p7

call msgbox


exit

main7 ENDP

END main7
