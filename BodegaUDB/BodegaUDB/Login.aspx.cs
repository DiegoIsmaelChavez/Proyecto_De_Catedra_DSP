using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
namespace BodegaUDB
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void BtnIngresar_Click(object sender, EventArgs e)
        {
            string conectar = ConfigurationManager.ConnectionStrings["conexion"].ConnectionString;
            SqlConnection sqlConectar = new SqlConnection(conectar);
            SqlCommand cmd = new SqlCommand("ValidarEmpleado", sqlConectar)
            {
                CommandType = CommandType.StoredProcedure
            };

            cmd.Connection.Open();
            cmd.Parameters.Add("@uSUARIO", SqlDbType.VarChar, 100).Value = tbUsuario.Text;
            cmd.Parameters.Add("@Password", SqlDbType.VarChar, 100).Value = tbPassword.Text;
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Session["usuariologeado"] = tbUsuario.Text;
                Response.Redirect("Index.aspx");
            }
            else
            {
                lblError.Text = "Error de usuario o contraseña";
            }

            cmd.Connection.Close();

        }

        
    }
}