using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BodegaUDB
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usuariologeado"] != null)
            {
                string usuariologeado = Session["usuariologeado"].ToString();
                lblBienvenida.Text = "Bienvenido/a " + usuariologeado;
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }
        protected void btCerrar_Click(object sender, EventArgs e)
        {
            Session.Remove("usuariologeado");
            Response.Redirect("Login.aspx");
        }
    }
}