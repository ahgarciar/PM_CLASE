// dllmain.cpp : Define el punto de entrada de la aplicación DLL.
#include "pch.h"

BOOL APIENTRY DllMain( HMODULE hModule,
                       DWORD  ul_reason_for_call,
                       LPVOID lpReserved
                     )
{
    switch (ul_reason_for_call)
    {
    case DLL_PROCESS_ATTACH:
    case DLL_THREAD_ATTACH:
    case DLL_THREAD_DETACH:
    case DLL_PROCESS_DETACH:
        break;
    }
    return TRUE;
}

int __stdcall suma(int a, int b) {
    //data
    int resultado;

    _asm {  //ensamblador inline

        mov eax, a
        add eax, b

        mov resultado, eax
    }

    return resultado;
}

//TAREA 1
const char* __stdcall getsaludo() {
    const char* variable = "texto a devolver";
    return variable;
}

//TAREA 2
int __stdcall get_largo_variable(const char* variable) {
    int largo = 0;
    largo = strlen(variable);
    return largo;
}