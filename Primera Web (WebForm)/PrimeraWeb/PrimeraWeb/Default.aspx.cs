using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dominio;

namespace PrimeraWeb
{
    public partial class _Default : Page
    {
        public string user { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            //AutoNegocio negocio = new AutoNegocio();
            //if(Request.QueryString["nombre"] != null)
            //{
            //    string user = Request.QueryString["nombre"].ToString();
            //    lblUser.Text = user + " hola que haces?";
            //}
            //else
            //{
            //    lblUser.Text = " hola que haces?";
            //}

            //Operador ternario
            //user = Request.QueryString["nombre"] != null ? Request.QueryString["nombre"].ToString() : "";
            
            //Tupla
            //user = Session["usuario"] != null ? Session["usuario"].ToString() : "";

            //Arreglar
            
            if(Session["listaAutos"] == null)
            {
                AutoNegocio autoNegocio = new AutoNegocio();
                Session.Add("listaAutos", autoNegocio.listar());
            }

            //AutoNegocio autoNegocio = new AutoNegocio();
            //Session.Add("listasAutos", autoNegocio.listar());

            dgvAutos.DataSource = Session["listaAutos"];
            dgvAutos.DataBind();

            
        }

        protected void dgvAutos_SelectedIndexChanged(object sender, EventArgs e)
        {
           // var algo = dgvAutos.SelectedRow.Cells[0];
            var id = dgvAutos.SelectedDataKey.Value.ToString();

            Response.Redirect("AutoForm.aspx?=IdAuto" + id);
        }
    }
}