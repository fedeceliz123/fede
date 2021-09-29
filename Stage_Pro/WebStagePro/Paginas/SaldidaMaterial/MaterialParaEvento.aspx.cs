using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebStagePro.Paginas.SaldidaMaterial
{
    public partial class CargarSalidaMaterial : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GVMaterial_RowCommand(object sender, GridViewCommandEventArgs e)
        {

            int index = Convert.ToInt32(e.CommandArgument);

            if (e.CommandName=="Agregar")
            {
                Session["CodigoMaterial"] = (GVMaterial.DataKeys[index].Value).ToString();
                txtCodigo.Text = Session["CodigoMaterial"].ToString();

            }
        }
    }
}