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
titulo_p8 db "Este es el titulo",0

cuerpo_msj_p8 db "Primera linea", 0dh, 0ah
			  db "Segunda linea", 13, 10	
			  db "Tercera linea", 13d, 10d, 13, 10
			  db "Cuarta Lineaa", 0

.code
main8 PROC
; L�gica del Programa

mov ebx, offset titulo_p8
mov edx, offset cuerpo_msj_p8

call msgboxask

call writeint ; resultado asociado al boton presionado  ; 6 = SI   7 = NO


exit

main8 ENDP

END main8
