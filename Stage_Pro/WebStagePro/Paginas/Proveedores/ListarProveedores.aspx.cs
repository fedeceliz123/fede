using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidades;
using Negocio;
using System.Data;


namespace WebStagePro.Paginas.Proveedores
{
    public partial class ListarProveedores : System.Web.UI.Page
    {
        Negocio.NegocioProveedores nProv = new NegocioProveedores();

        protected void Page_Load(object sender, EventArgs e)
        {
            llenarGV();
        }
        private void llenarGV()
        {


            GVProveedores.DataSource = null;
            GVProveedores.DataSource = nProv.ListarProv("si");
            GVProveedores.DataBind();

        }

        protected void GVProveedores_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int index = Convert.ToInt32(e.CommandArgument);

            if (e.CommandName == "Editar")
            {
                Session["Proveedor"] = (GVProveedores.DataKeys[index].Value).ToString();
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), "#myModal", "$('#myModal').modal();", true);
                lblModal.Text = "Editar Proveedor";
                btnEditar.Visible = true;
                llenarCampos();
                CamposHabilitados();
                btnReactivar.Visible = false;

            }
            if (e.CommandName == "Ver")
            {
                Session["Proveedor"] = (GVProveedores.DataKeys[index].Value).ToString();
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), "#myModal", "$('#myModal').modal();", true);
                lblModal.Text = "Ver Provedor";
                btnEditar.Visible = false;
                llenarCampos();
                CamposdesHabilitados();

            }
        }

        private void CamposHabilitados()
        {
            txtCuit.Enabled = true;
            txtFechaingreso.Enabled = true;
            txtNombreF.Enabled = true;
            txtRazonS.Enabled = true;
            txtRubro.Enabled = true;
            selectIva.Enabled = true;
        }
        private void CamposdesHabilitados()
        {
            txtCuit.Enabled = false;
            txtFechaingreso.Enabled = false;
            txtNombreF.Enabled = false;
            txtRazonS.Enabled = false;
            txtRubro.Enabled = false;
            selectIva.Enabled = false;
        }

        private void llenarCampos()
        {
            DataTable dt = nProv.llenarCamposPro(Session["Proveedor"].ToString());

            foreach(DataRow row in dt.Rows)
            {
                txtCuit.Text = row["cuit"].ToString();
                txtRazonS.Text = row["razon_social"].ToString();
                txtNombreF.Text = row["nombre_fantasia"].ToString();
                selectIva.SelectedValue = row["iva"].ToString();
                txtRubro.Text = row["rubro"].ToString();
                txtFechaingreso.Text = (DateTime.Parse(row["fecha_de_ingreso"].ToString())).ToString("dd/MM/yyyy");
            }

        }

    }
}