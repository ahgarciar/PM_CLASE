using System;
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
    public partial class P3_Calculo_IMC : Form
    {
        [DllImport(@"D:\FI_Cloud\OneDrive - Universidad Autónoma de Tamaulipas\14_Periodo_2022_1\PM_CLASE\PM_0_ClaseU5\DLL_AppHibrida_ASM_C\Debug\DLL_AppHibrida_ASM_C.dll")]
        static extern double calc_IMC(int a, int b);

        public P3_Calculo_IMC()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            int a = Convert.ToInt32(Convert.ToDouble(txt_altura.Text) * 10);
            int b = Convert.ToInt32(txt_peso.Text)  * 1000;            
            double resultado = calc_IMC(a, b);

            txt_resultado.Text = resultado.ToString();
        }
    }
}
