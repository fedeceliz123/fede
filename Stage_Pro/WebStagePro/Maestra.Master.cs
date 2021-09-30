using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;

namespace WebStagePro
{
    public partial class Maestra : System.Web.UI.MasterPage

    {
        Negocio.NegocioLogin login = new NegocioLogin();
        protected void Page_Load(object sender, EventArgs e)
        {
            string nombre = Request.QueryString["empleado"].ToString();

            lblUsuario.Text = nombre;

            string dni = Session["Usuario"].ToString();

            MemoryStream ms = new MemoryStream();

           ms= login.imagen(dni);

            imagen(ms);

        }

        private void imagen(MemoryStream ms)
        {
           
               
                byte[] imageBytes = ms.ToArray();
                ImageUser.ImageUrl = "data:image/png;base64," + Convert.ToBase64String(imageBytes);
                         



        }
    }
}