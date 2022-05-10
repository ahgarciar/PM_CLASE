﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WindowFormAppConsumoDLL
{
    public partial class P2_discriminante : Form
    {
        [DllImport(@"D:\FI_Cloud\OneDrive - Universidad Autónoma de Tamaulipas\14_Periodo_2022_1\PM_CLASE\PM_0_ClaseU5\DLL_AppHibrida_ASM_C\Debug\DLL_AppHibrida_ASM_C.dll")]
        static extern int discriminante(int a, int b, int c);


        public P2_discriminante()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            int a = Convert.ToInt32(txt_A.Text);
            int b = Convert.ToInt32(txt_B.Text);
            int c = Convert.ToInt32(txt_C.Text);
            int resultado = discriminante(a, b, c);

            txt_resultado.Text = resultado.ToString();
        }
    }
}
