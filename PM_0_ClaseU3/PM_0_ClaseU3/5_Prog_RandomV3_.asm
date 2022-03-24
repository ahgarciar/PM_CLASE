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

.code
main5 PROC
; Lógica del Programa


call randomize

;;randomrange  ; genera un num aleatorio entre 0 y n-1 
; donde n es el valor que tenga eax
; el num aleatorio generado se guarda en eax

mov ecx, 20

ciclo:
	mov eax, 10    ;n 
	call randomrange 
	call writeint
	call crlf
	loop ciclo 




exit

main5 ENDP

END main5
