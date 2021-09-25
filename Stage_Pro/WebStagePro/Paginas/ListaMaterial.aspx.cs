using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Entidades;
using Negocio;


namespace WebStagePro.Paginas
{
    public partial class ListaMaterial : System.Web.UI.Page
    {
            Negocio.NegocioMaterial nMat = new NegocioMaterial();
        protected void Page_Load(object sender, EventArgs e)
        {

            llenarGV();

        }

        private void llenarGV()
        {


            GVMaterial.DataSource = null;
            GVMaterial.DataSource= nMat.ListarMaterial("si");
            GVMaterial.DataBind();

        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            GVMaterial.DataSource = null;
            GVMaterial.DataSource = nMat.ListarMaterialFiltro(txtBuscar.Text,"si");
            GVMaterial.DataBind();
        }



        protected void GVMaterial_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            
                int index = Convert.ToInt32(e.CommandArgument);

            if (e.CommandName == "Editar")
            {
                Session["CodigoMaterial"] = (GVMaterial.DataKeys[index].Value).ToString();

                ScriptManager.RegisterStartupScript(Page, Page.GetType(), "#myModal", "$('#myModal').modal();", true);
                lblModal.Text = "Editar material";
                btnEditar.Visible = true;
            }
            if (e.CommandName == "Ver")
            {
                Session["CodigoMaterial"] = (GVMaterial.DataKeys[index].Value).ToString();
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), "#myModal", "$('#myModal').modal();", true);
                lblModal.Text = "Ver material";
                btnEditar.Visible = false;
            }
            if (e.CommandName == "Eliminar")
            {
                Session["CodigoMaterial"] = (GVMaterial.DataKeys[index].Value).ToString();
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), "#modalEliminar", "$('#modalEliminar').modal();", true);
                lblEliminar.Text = lblEliminar.Text + " el material " + Session["CodigoMaterial"].ToString();
            }


        }

       

        protected void btnEditar_Click(object sender, EventArgs e)
        {

        }
        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            if (txtMotivo.Text == "")
            {
                string msg = "Seleccione un motivo";
                ScriptManager.RegisterStartupScript(this, this.GetType(),
                   "Advertencia",
                   "alert('" + msg + "');", true);
                return;
            }

            nMat.BajaMaterial(Session["CodigoMaterial"].ToString(), txtMotivo.Text);
            

            llenarGV();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Paginas/CargaMaterial.aspx");
        }
    }
}