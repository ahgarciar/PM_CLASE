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

INCLUDE LibreriaMacros.inc


.data
; Área de Declaración de Variables

.code
main13 PROC
; Lógica del Programa

Println "Ingresa la base: "
call readint
mov ebx, eax

Println "Ingresa la altura: "
call readint

;;;;;;;;;;
calc_area_rectangulo_v1
;;;;;;;;
Println "El area del rectangulo es: "
call writedec


exit

main13 ENDP

END main13
