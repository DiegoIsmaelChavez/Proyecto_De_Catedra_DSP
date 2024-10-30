using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BodegaUDB
{
    public partial class CrearProducto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGuardarProducto_Click(object sender, EventArgs e)
        {
            string loteSeleccionado = SerieLote.SelectedValue;
            string categoriaProducto = CategoriaProducto.Text;

            // Lógica para guardar el producto en la base de datos
            GuardarProducto(loteSeleccionado, categoriaProducto);

            // Redirigir a la lista de productos o mostrar un mensaje de éxito
            Response.Redirect("ListaProductos.aspx");
        }
        private void GuardarProducto(string loteSeleccionado, string categoriaProducto)
        {
            // Implementa la lógica para guardar el producto en la base de datos
        }
    }
}