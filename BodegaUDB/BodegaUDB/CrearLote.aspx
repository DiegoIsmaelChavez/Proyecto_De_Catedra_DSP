<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CrearLote.aspx.cs" Inherits="BodegaUDB.CrearLote" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="Recursos/css/Crearlote.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Crear Nuevo Lote</h2>

    <div class="form-group">
        <label for="NumSerie">Número de Serie</label>
        <input type="number" class="form-control" id="NumSerie" name="NumSerie" required />
    </div>

    <div class="form-group">
        <label for="FechaProduccion">Fecha de Producción</label>
        <input type="date" class="form-control" id="FechaProduccion" name="FechaProduccion" required />
    </div>

    <div class="form-group">
        <label for="FechaIngreso">Fecha de Ingreso</label>
        <input type="date" class="form-control" id="FechaIngreso" name="FechaIngreso" required />
    </div>

    <div class="form-group">
        <label for="Precio">Precio</label>
        <input type="number" step="0.01" class="form-control" id="Precio" name="Precio" required />
    </div>

    <div class="form-group">
        <label for="IdProveedor">Proveedor</label>
        <select class="form-control" id="IdProveedor" name="IdProveedor" required>
            <option value="">Seleccione un proveedor</option>
            @foreach (var proveedor in ViewBag.Proveedores)
            {
                <option value="@proveedor.IdProveedor">@proveedor.Nombre</option>
            }
        </select>
    </div>

    <button type="submit" class="btn btn-success">Guardar Lote</button>
    <a href="@Url.Action("ListaLotes", "Lote")" class="btn btn-secondary">Cancelar</a>
</form>
</body>
</html>
