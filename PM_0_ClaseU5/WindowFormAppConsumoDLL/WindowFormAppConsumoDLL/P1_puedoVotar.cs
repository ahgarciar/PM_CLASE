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
    public partial class P1_puedoVotar : Form
    {
        [DllImport(@"D:\FI_Cloud\OneDrive - Universidad Autónoma de Tamaulipas\14_Periodo_2022_1\PM_CLASE\PM_0_ClaseU5\DLL_AppHibrida_ASM_C\Debug\DLL_AppHibrida_ASM_C.dll")]
        static extern int puedoVotar(int edad);

        public P1_puedoVotar()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            int edad = Convert.ToInt32(txt_edad.Text);
            string r = puedoVotar(edad) == 0 ? "No Puede": "Si Puede";

            txt_resultado.Text = r;

        }

        private void P1_puedoVotar_Load(object sender, EventArgs e)
        {

        }
    }
}
