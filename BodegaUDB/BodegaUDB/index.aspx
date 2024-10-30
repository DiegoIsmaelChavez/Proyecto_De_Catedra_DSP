<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="BodegaUDB.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="Recursos/css/index.css" rel="stylesheet" />
    <title>Index</title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Bienvenido a Bodega UDB</h2>
        <div>
            <asp:Label ID="lblBienvenida" runat="server" Text="Bienvenido, [Usuario]" CssClass="bienvenida"></asp:Label>
        </div>
        <div class="button-container">
          
            <asp:Button ID="btnCrearLote" runat="server" Text="Crear Lote" PostBackUrl="~/CrearLote.aspx" CssClass="navButton" />
            <asp:Button ID="btnCrearProducto" runat="server" Text="Crear Producto" PostBackUrl="~/CrearProducto.aspx" CssClass="navButton" />
            <asp:Button ID="btnListaLote" runat="server" Text="Lista de Lotes" PostBackUrl="~/ListaLote.aspx" CssClass="navButton" />
            <asp:Button ID="btnListarProducto" runat="server" Text="Lista de Productos" PostBackUrl="~/ListarProducto.aspx" CssClass="navButton" />
        </div>
        <div class="logout-container">
            <asp:Button ID="btCerrar" runat="server" Text="Cerrar Sesión" OnClick="btCerrar_Click" CssClass="logoutButton" />
        </div>
    </form>
</body>
</html>
