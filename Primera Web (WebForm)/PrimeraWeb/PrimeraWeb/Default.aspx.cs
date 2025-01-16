using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PrimeraWeb
{
    public partial class _Default : Page
    {
        public string user{ get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
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
            user = Session["usuario"] != null ? Session["usuario"].ToString() : "";

            lblUser.Text = user + " hola que haces?";
        }
    }
}