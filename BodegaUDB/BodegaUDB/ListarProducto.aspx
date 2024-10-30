<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListarProducto.aspx.cs" Inherits="BodegaUDB.ListarProducto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <link href="Recursos/css/ListarProducto.css" rel="stylesheet" />
    <title>Listado de Productos</title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Listado de Productos</h1>
        <div>
          <asp:HyperLink ID="btnCrearProducto" runat="server" NavigateUrl="~/CrearProducto.aspx" CssClass="btnCrearLote">Crear Producto</asp:HyperLink>

            <asp:GridView ID="GridViewProductos" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="NombreProducto" HeaderText="Nombre del Producto" />
                    <asp:BoundField DataField="Lote" HeaderText="Lote" />
                    <asp:BoundField DataField="Categoria" HeaderText="Categoría" />
                    <asp:TemplateField HeaderText="Acciones">
                        <ItemTemplate>
                            <asp:Button ID="btnEditar" runat="server" Text="Editar" CommandName="Editar" CssClass="btnAccion" />
                            <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" CommandName="Eliminar" OnClientClick="return confirm('¿Estás seguro de eliminar este producto?');" CssClass="btnAccion" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>

               
                <EmptyDataTemplate>
                    <table style="width: 100%; border: 1px solid #ddd; text-align: center;">
                        <tr>
                            <td colspan="4" style="padding: 20px; color: #555;">
                                No hay productos disponibles en este momento.
                            </td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
