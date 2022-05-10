﻿using System;
using System.Runtime.InteropServices;
using System.Windows.Forms;

namespace WindowFormAppConsumoDLL
{
    public partial class Program_One : Form
    {        
        [DllImport(@"D:\FI_Cloud\OneDrive - Universidad Autónoma de Tamaulipas\14_Periodo_2022_1\PM_CLASE\PM_0_ClaseU5\DLL_AppHibrida_ASM_C\Debug\DLL_AppHibrida_ASM_C.dll")]
        static extern int suma(int x, int y);

        [DllImport(@"D:\FI_Cloud\OneDrive - Universidad Autónoma de Tamaulipas\14_Periodo_2022_1\PM_CLASE\PM_0_ClaseU5\DLL_AppHibrida_ASM_C\Debug\DLL_AppHibrida_ASM_C.dll")]
        static extern int resta(int x, int y);

        [DllImport(@"D:\FI_Cloud\OneDrive - Universidad Autónoma de Tamaulipas\14_Periodo_2022_1\PM_CLASE\PM_0_ClaseU5\DLL_AppHibrida_ASM_C\Debug\DLL_AppHibrida_ASM_C.dll")]
        static extern int multiplicacion(int x, int y);

        [DllImport(@"D:\FI_Cloud\OneDrive - Universidad Autónoma de Tamaulipas\14_Periodo_2022_1\PM_CLASE\PM_0_ClaseU5\DLL_AppHibrida_ASM_C\Debug\DLL_AppHibrida_ASM_C.dll")]
        static extern double division(int x, int y);


        [DllImport(@"D:\FI_Cloud\OneDrive - Universidad Autónoma de Tamaulipas\14_Periodo_2022_1\PM_CLASE\PM_0_ClaseU5\DLL_AppHibrida_ASM_C\Debug\DLL_AppHibrida_ASM_C.dll")]
        static extern string puntoMedio(int x1, int y1, int x2, int y2);
        

            public Program_One()
        {
            InitializeComponent();
        }

        private void Programa_1_Load(object sender, EventArgs e)
        {
            string s = puntoMedio(10, 3, 15, 8);
            MessageBox.Show(s);
        }

        private void btn_ExecuteSum_Click(object sender, EventArgs e)
        {
            int A = Convert.ToInt32(txt_numA.Text);
            int B = Convert.ToInt32(txt_numB.Text);
            txt_SumResult.Text = suma(A, B).ToString();

            MessageBox.Show("Resta: " + resta(A, B).ToString());
            MessageBox.Show("Multiplicación: " + multiplicacion(A, B).ToString());
            MessageBox.Show("División: " + division(A, B).ToString());

            
        }

    }
}
