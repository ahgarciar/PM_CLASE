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
main2 PROC
; L�gica del Programa

call readchar  ; eax... guarda el caracter que se ingrese (no espera al enter)
			   ; no tiene un echo por defecto

call writechar  ; imprime el caracter que este en eax

exit

main2 ENDP

END main2
