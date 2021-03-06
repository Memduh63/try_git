﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cine.aspx.cs" Inherits="EcCines.Admin.cine" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Gestión de Cines</title>
    <script src="Scripts/jquery-2.1.3.min.js"></script>
    <script src="Scripts/toastr.min.js"></script>
    <script src="Scripts/global.js"></script>
    <link href="css/toastr.min.css" rel="stylesheet" />
    <link href="css/styles.css" rel="stylesheet" type="text/css" media="screen" />
    <link rel="shortcut icon" href="./images/ec-logo.jpeg" />
</head>
<body>
    <div id="Content">
        <form id="frmMaestroCine" runat="server" defaultbutton="btnDisableEnter">
            <div>
                <div class="head">
                    <div class="logo">
                        <img src="images/logo.png" />
                    </div>
                    <div class="title">
                        <label class="title_head">CARTELERA DE CINES EL COLOMBIANO</label>
                        <label class="title_head page">GESTIÓN DE CINES</label>
                    </div>
                </div>
                <hr />
                <asp:Button PostBackUrl="Index.aspx" ID="btnHome" runat="server" Text="Películas" CssClass="btn cines" />
                <asp:Button PostBackUrl="CinesHorarios.aspx" ID="btnCinesHorarios" runat="server" Text="Cines y horarios" CssClass="btn cines" />
                <asp:Button PostBackUrl="entidad.aspx" ID="btnAdminMaestros" runat="server" Text="Admin Parámetros" CssClass="btn" />
                <asp:Button PostBackUrl="teatro.aspx" ID="btnAdminTeatros" runat="server" Text="Admin Salas de cines" CssClass="btn" />
            </div>
            <br class="clear" />
            <asp:ScriptManager runat="server" ID="smUpdate"></asp:ScriptManager>
            <asp:UpdatePanel runat="server" ID="upPrincipal">
                <ContentTemplate>
                    <div class="msg">
                        <hr>
                    </div>
                    <div>
                        <div class="title">
                            <span>Nombre: (*)</span>
                            <asp:TextBox ID="txtNombre" runat="server" CssClass="camp-text"></asp:TextBox>
                        </div>
                        <div class="title">
                            <span>Nit: (*)</span>
                            <asp:TextBox ID="txtNit" runat="server" CssClass="camp-text"></asp:TextBox>
                        </div>
                    </div>
                    <div>
                        <asp:Button ID="btnNuevo" runat="server" Text="Guardar" OnClick="OnButtonNuevo" CssClass="btn" />
                        <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" OnClick="OnButtonEliminar" CssClass="btn" />
                        <asp:Button ID="btnActualizar" runat="server" Text="Actualizar" OnClick="OnButtonActualizar" CssClass="btn" />
                        <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" OnClick="OnButtonCancelar" CssClass="btn" />
                        <br />
                        <br />
                    </div>
                    <div>
                        <asp:GridView ID="grdInfo" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="idCine" ForeColor="#333333"
                            GridLines="None" OnSelectedIndexChanged="OnGridInfoSelectedIndexChanged" OnPageIndexChanging="OnGridInfoPageIndexChanging">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="nombreCine" HeaderText="Nombre" SortExpression="nombreCine" />
                                <asp:BoundField DataField="Nit" HeaderText="Nit" SortExpression="Nit" />
                                <asp:CommandField ShowSelectButton="True" />
                            </Columns>
                            <EditRowStyle BackColor="#2461BF" />
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#EFF3FB" />
                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F5F7FB" />
                            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                            <SortedDescendingCellStyle BackColor="#E9EBEF" />
                            <SortedDescendingHeaderStyle BackColor="#4870BE" />
                        </asp:GridView>
                    </div>
                    <asp:Button ID="btnDisableEnter" runat="server" Text="" OnClientClick="return false;" Style="display: none;" />
                </ContentTemplate>
            </asp:UpdatePanel>
        </form>
    </div>
</body>
</html>
