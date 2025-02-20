using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dominio;
using negocio;

namespace pokedex_web
{
    public partial class MiPerfil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Trainee trainee = Session["trainee"] != null ? (Trainee)Session["trainee"] : null;

            

        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            try
            {
                TraineeNegocio negocio = new TraineeNegocio();

                Trainee user = (Trainee)Session["trainee"];
                string ruta = Server.MapPath("./Images/");
                txtImagen.PostedFile.SaveAs(ruta + "perfil-" + user.Id + ".jpg");

                user.ImagenPerfil = "perfil-" + user.Id + ".jpg";

                negocio.actualizar(user);

            }
            catch (Exception ex)
            {

                Session.Add("error", ex.ToString());
            }
        }
    }
}