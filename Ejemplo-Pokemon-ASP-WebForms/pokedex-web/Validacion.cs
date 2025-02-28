using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.UI.WebControls;

namespace negocio
{
    public static class Validacion
    {
        public static bool textoVacio(object Control)
        {
            if (Control is TextBox texto)
            {
                if(string.IsNullOrEmpty(texto.Text))
                {
                    return false;
                }
                else
                {
                    return true;
                }
            }
            return false;
        }
    }
}
