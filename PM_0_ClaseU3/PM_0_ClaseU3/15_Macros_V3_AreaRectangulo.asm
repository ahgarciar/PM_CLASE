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
var1_15 dword 10


.code
main15 PROC
; L�gica del Programa

Println "Ingresa la base: "
call readint
mov ebx, eax

Println "Ingresa la altura: "
call readint

;;;;;;;;;;
;calc_area_rectangulo_v3 ebx, eax  ;NO SE PPUEDE

;
;calc_area_rectangulo_v3 var1_15, EAX

;
calc_area_rectangulo_v3 5, EAX

;;;;;;;;
Println "El area del rectangulo es: "
call writedec


exit

main15 ENDP

END main15
