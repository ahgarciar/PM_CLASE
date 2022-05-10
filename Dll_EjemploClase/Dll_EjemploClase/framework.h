#pragma once

#define WIN32_LEAN_AND_MEAN             // Excluir material rara vez utilizado de encabezados de Windows
// Archivos de encabezado de Windows
#include <windows.h>


// hacer referencia aquí a los encabezados adicionales que el programa necesita
extern "C" __declspec(dllexport) int __stdcall suma(int a, int b);

extern "C" __declspec(dllexport) const char* __stdcall getsaludo();

extern "C" __declspec(dllexport) int __stdcall get_largo_variable(const char* variable);

