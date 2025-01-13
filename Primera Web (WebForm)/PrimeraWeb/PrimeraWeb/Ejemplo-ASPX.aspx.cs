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
            if (!IsPostBack)
            {
                txtNombre.Text = "Ingrese nombre";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string nombre = txtNombre.Text;
            string apellido = txtApellido.Value;
            lblSaludo.Text = "Hola " + nombre + " " + apellido;

            Response.Redirect("Default.aspx?nombre="+ nombre, false);
        }

        protected void txtNombre_TextChanged(object sender, EventArgs e)
        {
            lblbSecundario.Text = "Hola Munde";
        }
    }
}