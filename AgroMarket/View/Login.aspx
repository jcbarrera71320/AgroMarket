<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="AgroMarket.View.Login" %>

<!DOCTYPE html>
<html lang="es">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Iniciar sesi&#243;n - AgroMarket-Connect</title>
    <link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;600;700&family=Playfair+Display:wght@600;700&display=swap" rel="stylesheet" />
    <link href="~/Css/AgroMarket.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="login-screen">
            <div class="login-card">
                <div class="login-logo">&#127793;</div>
                <h1>AgroMarket-Connect</h1>
                <p class="subtitle">Comercializaci&#243;n agr&#237;cola directa para Sabana Centro</p>

                <!-- Formulario de Login -->
                <asp:Panel ID="pnlLogin" runat="server">
                    <div class="role-toggle" id="loginRoleToggle">
                        <button type="button" class="active" onclick="setLoginRole('productor')">Productor</button>
                        <button type="button" onclick="setLoginRole('comprador')">Comprador</button>
                    </div>
                    <div class="form-group">
                        <label>Correo electr&#243;nico</label>
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="" TextMode="Email" placeholder="correo@ejemplo.com"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Contrase&#241;a</label>
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="********"></asp:TextBox>
                    </div>
                    <asp:Button ID="btnLogin" runat="server" Text="Iniciar sesi&#243;n"
                        CssClass="btn-agro btn-agro-primary btn-agro-block" OnClick="btnLogin_Click" />
                    <div class="login-links">
                        <a href="Registro">Crear cuenta nueva</a>
                    </div>
                </asp:Panel>
            </div>
        </div>
    </form>
    <script src="<%= ResolveUrl("~/Js/AgroMarket.js") %>"></script>
</body>
</html>
