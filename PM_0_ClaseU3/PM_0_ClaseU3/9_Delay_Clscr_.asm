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
msj1_p9 db "Mensaje No. "

var1_p9 byte 49

terminador db ".", 0

.code
main9 PROC
; Lógica del Programa

mov edx, offset msj1_p9

mov ecx, 9
mov eax, 1000  ;tiempo en ms que se detendra la ejecución con base en delay

ciclo:
	call writestring
	inc var1_p9
	call crlf
	call delay
loop ciclo

mov eax, 4000
call delay

call clrscr

;Ejercicio crear un contador del 10 al 50 <<---

exit

main9 ENDP

END main9
