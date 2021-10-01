using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebStagePro.Paginas.SalidaQR
{
    public partial class SalidaConQR : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtCodigo_TextChanged(object sender, EventArgs e)
        {
            
        }

        public string hola()
        {
            string a = "fede";
            Label1.Text = a;
            return a;
            

        }



    }
}