using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebStagePro.Paginas.Eventos
{
    public partial class CargaEventos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

      

        protected void btnMasEncargado_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/Paginas/Empleados/CargarEmpleado.aspx");
        }

        protected void btnMasCliente_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/Paginas/Clientes/CargaClinete.aspx");
        }
    }
}