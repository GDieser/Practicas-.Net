using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PrimeraWeb
{
    public partial class AutoForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ddlColore.Items.Add("Negro");
            ddlColore.Items.Add("Blanco");
            ddlColore.Items.Add("Azul");
        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {

        }
    }
}