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

INCLUDE LibreriaMacros.inc


.data
; �rea de Declaraci�n de Variables
var1_14 dword 10


.code
main14 PROC
; L�gica del Programa

Println "Ingresa la base: "
call readint
mov ebx, eax

Println "Ingresa la altura: "
call readint

;;;;;;;;;;
;calc_area_rectangulo_v2 ebx, eax

; base =  10  altura  = XXX
;calc_area_rectangulo_v2 var1_14, eax


;calc_area_rectangulo_v2 var1_14, var1_14


calc_area_rectangulo_v2 var1_14, 6


;;;;;;;;
Println "El area del rectangulo es: "
call writedec


exit

main14 ENDP

END main14
