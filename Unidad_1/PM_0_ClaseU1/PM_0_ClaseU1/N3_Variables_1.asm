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
varTest_3 word 260d 
varCheckEndian word 0CEFDh
varCheckEndian2 dword 0EFACBDh

.code
main3 PROC
; L�gica del Programa

;mov ax, 10

;mov ah, 12

mov ax, 260

;Tarea. Little Endian y Big Endian


exit

main3 ENDP

END main3
