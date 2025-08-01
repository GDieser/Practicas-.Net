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
            string password = txtPassword.Text;
            lblSaludo.Text = "Hola " + nombre;

            Session.Add("Usuario", nombre);
            Session.Add("pass", password);

            //Response.Redirect("Default.aspx?nombre="+ nombre + "&pass=" + txtPassword.Text, false);
            Response.Redirect("Default.aspx", false);
        }

        protected void txtNombre_TextChanged(object sender, EventArgs e)
        {
            lblbSecundario.Text = "Hola Munde";
        }
    }
}