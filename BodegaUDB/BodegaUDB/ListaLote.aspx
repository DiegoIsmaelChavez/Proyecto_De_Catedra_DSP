<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListaLote.aspx.cs" Inherits="BodegaUDB.ListaLote" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="Recursos/css/listalote.css" rel="stylesheet" />
     <title>Lista de Lotes</title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Lista Lotes</h1>
        <div>
          
            <asp:HyperLink ID="btnCrearLote" runat="server" NavigateUrl="~/CrearLote.aspx" CssClass="btnCrearLote">Crear Lote</asp:HyperLink>

         
            <asp:GridView ID="GridViewLotes" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="NumeroSerie" HeaderText="Número de Serie" />
                    <asp:BoundField DataField="FechaProduccion" HeaderText="Fecha de Producción" DataFormatString="{0:dd/MM/yyyy}" />
                    <asp:BoundField DataField="FechaIngreso" HeaderText="Fecha de Ingreso" DataFormatString="{0:dd/MM/yyyy}" />
                    <asp:BoundField DataField="Precio" HeaderText="Precio" DataFormatString="{0:C}" />
                    <asp:BoundField DataField="Proveedor" HeaderText="Proveedor" />
                    <asp:TemplateField HeaderText="Acciones">
                        <ItemTemplate>
                            <asp:Button ID="btnEditar" runat="server" Text="Editar" CommandName="Editar" />
                            <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" CommandName="Eliminar" OnClientClick="return confirm('¿Estás seguro de eliminar este lote?');" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                
               
                <EmptyDataTemplate>
                    <table style="width: 100%; border: 1px solid #ddd; text-align: center;">
                        <tr>
                            <td colspan="6" style="padding: 20px; color: #555;">
                                No hay datos disponibles en este momento.
                            </td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
