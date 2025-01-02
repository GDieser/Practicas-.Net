using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PrimeraWeb
{
    public partial class Ejemplo_ASPX : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //txtNombre.Text = "German";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string nombre = txtNombre.Text;
            string apellido = txtApellido.Value;
            lblSaludo.Text = "Hola " + nombre + " " + apellido;
        }
    }
}