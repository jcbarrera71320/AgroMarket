<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="AgroMarket.View.Registro" %>

<!DOCTYPE html>
<html lang="es">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Registro - AgroMarket-Connect</title>
    <link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;600;700&family=Playfair+Display:wght@600;700&display=swap" rel="stylesheet" />
    <link href="~/Css/AgroMarket.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="login-screen">
            <div class="login-card">
                <div class="login-logo">&#127793;</div>
                <h1>Crear cuenta</h1>
                <p class="subtitle">&#218;nete a la plataforma de comercializaci&#243;n agr&#237;cola</p>

                <div class="role-toggle" id="regRoleToggle">
                    <button type="button" class="active" onclick="setRegRole('productor')">Productor</button>
                    <button type="button" onclick="setRegRole('comprador')">Comprador</button>
                </div>

                <div class="form-group">
                    <label>Nombre completo</label>
                    <asp:TextBox ID="txtNombre" runat="server" placeholder="Juan P&#233;rez"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label>Correo electr&#243;nico</label>
                    <asp:TextBox ID="txtEmailReg" runat="server" TextMode="Email" placeholder="correo@ejemplo.com"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label>Tel&#233;fono</label>
                    <asp:TextBox ID="txtTelefono" runat="server" TextMode="Phone" placeholder="310 000 0000"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label>Municipio</label>
                    <asp:DropDownList ID="ddlMunicipio" runat="server">
                        <asp:ListItem Text="Seleccione..." Value="" />
                        <asp:ListItem Text="Zipaquir&#225;" Value="Zipaquira" />
                        <asp:ListItem Text="Cajic&#225;" Value="Cajica" />
                        <asp:ListItem Text="Ch&#237;a" Value="Chia" />
                        <asp:ListItem Text="Cogua" Value="Cogua" />
                        <asp:ListItem Text="Tabio" Value="Tabio" />
                        <asp:ListItem Text="Tenjo" Value="Tenjo" />
                        <asp:ListItem Text="Nemoc&#243;n" Value="Nemocon" />
                        <asp:ListItem Text="Gachancip&#225;" Value="Gachancipa" />
                        <asp:ListItem Text="Tocancip&#225;" Value="Tocancipa" />
                        <asp:ListItem Text="Sop&#243;" Value="Sopo" />
                    </asp:DropDownList>
                </div>

                <asp:Panel ID="pnlProductorFields" runat="server" CssClass="producer-fields">
                    <div class="form-group">
                        <label>Nombre de la finca</label>
                        <asp:TextBox ID="txtFinca" runat="server" placeholder="Finca La Esperanza"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Productos principales</label>
                        <asp:TextBox ID="txtProductos" runat="server" placeholder="Papa, zanahoria, cebolla..."></asp:TextBox>
                    </div>
                </asp:Panel>

                <div class="form-group">
                    <label>Contrase&#241;a</label>
                    <asp:TextBox ID="txtPasswordReg" runat="server" TextMode="Password" placeholder="M&#237;nimo 8 caracteres"></asp:TextBox>
                </div>

                <asp:Button ID="btnRegistro" runat="server" Text="Crear cuenta"
                    CssClass="btn-agro btn-agro-primary btn-agro-block" OnClick="btnRegistro_Click" />
                <div class="login-links">
                    <a href="Login">Ya tengo cuenta</a>
                </div>
            </div>
        </div>
    </form>
    <script src="<%= ResolveUrl("~/Js/AgroMarket.js") %>"></script>
</body>
</html>
