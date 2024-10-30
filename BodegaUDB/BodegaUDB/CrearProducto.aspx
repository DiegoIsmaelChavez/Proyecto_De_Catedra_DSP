<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CrearProducto.aspx.cs" Inherits="BodegaUDB.CrearProducto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="Recursos/css/CrearProducto.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Crear Nuevo Producto</h2>

        <div class="form-group">
            <label for="SerieLote">Lote</label>
            <asp:DropDownList ID="SerieLote" runat="server" CssClass="form-control" AppendDataBoundItems="true">
                <asp:ListItem Value="">Seleccione un lote</asp:ListItem>
                
            </asp:DropDownList>
        </div>

        <div class="form-group">
            <label for="CategoriaProducto">Categoría del Producto</label>
            <asp:TextBox ID="CategoriaProducto" runat="server" CssClass="form-control" required="required" />
        </div>

        <asp:Button ID="btnGuardarProducto" runat="server" Text="Guardar Producto" CssClass="btn btn-primary" OnClick="btnGuardarProducto_Click" />
        <asp:HyperLink ID="lnkCancelar" runat="server" CssClass="btn btn-secondary" NavigateUrl="ListaProductos.aspx">Cancelar</asp:HyperLink>
    </form>
</body>
</html>
