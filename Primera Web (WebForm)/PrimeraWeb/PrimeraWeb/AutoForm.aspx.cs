using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dominio;

namespace PrimeraWeb
{
    public partial class AutoForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ddlColore.Items.Add("Negro");
                ddlColore.Items.Add("Blanco");
                ddlColore.Items.Add("Azul");
            }
        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            Auto a = new Auto();
            a.IdAuto = int.Parse(txtId.Text);
            a.Modelo = txtModelo.Text;
            a.Descripcion = txtDescripcion.Text;
            a.Color = ddlColore.SelectedValue;
            a.Fecha = DateTime.Parse(txtFecha.Text);
            a.Usado = cboxUsado.Checked;

            if(rdbImportado.Checked)
            {
                a.Importado = true;
            }
            else if (rdbNacional.Checked)
            {
                a.Importado = false;
            }

            //Opcion 1
            ((List<Auto>)Session["listaAutos"]).Add(a);

            //Opcion 2 
            //List<Auto> temporal = (List<Auto>)Session["listaAutos"];
            //temporal.Add(a);

            Response.Redirect("Default.aspx");
        }

        protected void rdbImportado_CheckedChanged(object sender, EventArgs e)
        {

        }
    }
}