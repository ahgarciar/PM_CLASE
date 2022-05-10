// stdafx.h: archivo de inclusión de los archivos de inclusión estándar del sistema,
// o archivos de inclusión específicos de un proyecto utilizados frecuentemente, pero
// son rara vez modificados
//

#pragma once

#include "targetver.h"

#define WIN32_LEAN_AND_MEAN             // Excluir material rara vez utilizado de encabezados de Windows
// Archivos de encabezado de Windows
#include <windows.h>


// hacer referencia aquí a los encabezados adicionales que el programa necesita
extern "C" __declspec(dllexport) int __stdcall suma(int a, int b);
extern "C" __declspec(dllexport) int __stdcall resta(int a, int b);
extern "C" __declspec(dllexport) int __stdcall multiplicacion(int a, int b);
extern "C" __declspec(dllexport) double __stdcall division(int a, int b);
/////////////////////////////////////////////////////////////////////////////////////////////////


extern "C" __declspec(dllexport) const char* __stdcall puntoMedio(int x1, int y1, int x2, int y2);
extern "C" __declspec(dllexport) double __stdcall division(int a, int b);
extern "C" __declspec(dllexport) int __stdcall puedoVotar(int edad);


extern "C" __declspec(dllexport) int __stdcall discriminante(int a, int b, int c);
extern "C" __declspec(dllexport) double __stdcall calc_IMC(int altura, int peso);



extern "C" __declspec(dllexport) int __stdcall calc_difAbs(int P1_xi, int P2_xi);

extern "C" __declspec(dllexport) int __stdcall SumaDosNumeros(int P1, int P2);

extern "C" __declspec(dllexport) int __stdcall ChecarX(int X, int Z, int Y);


extern "C" __declspec(dllexport) int* __stdcall enviar_arreglo();

extern "C" __declspec(dllexport) int __stdcall LiberarMemoria(int* arreglo);

extern "C" __declspec(dllexport) double __stdcall promedio(int *arreglo);


extern "C" __declspec(dllexport) int* __stdcall asm_prueba(int *arreglo);