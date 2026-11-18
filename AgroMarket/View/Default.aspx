<%@ Page Title="Panel principal" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AgroMarket.View._Default" %>

<asp:Content ID="TitleContent" ContentPlaceHolderID="PageTitle" runat="server">
    Panel principal
</asp:Content>

<asp:Content ID="ActionsContent" ContentPlaceHolderID="TopBarActions" runat="server">
    <button type="button" class="btn-agro btn-agro-primary btn-agro-sm" onclick="openModalProducto()">+ Nuevo producto</button>
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <!-- Estadisticas -->
    <div class="stats-row">
        <div class="stat-card">
            <div class="label">Productos activos</div>
            <div class="value">24</div>
            <div class="trend trend-up">+3 esta semana</div>
        </div>
        <div class="stat-card">
            <div class="label">Pedidos pendientes</div>
            <div class="value">8</div>
            <div class="trend trend-up">+2 hoy</div>
        </div>
        <div class="stat-card">
            <div class="label">Unidades vendidas</div>
            <div class="value">156</div>
            <div class="trend trend-up">+12% vs. mes anterior</div>
        </div>
        <div class="stat-card">
            <div class="label">Compradores conectados</div>
            <div class="value">37</div>
            <div class="trend trend-up">+5 nuevos</div>
        </div>
    </div>

    <!-- Pedidos recientes -->
    <div class="section-header">
        <h3>Pedidos recientes</h3>
        <a href="Pedidos" class="btn-agro btn-agro-secondary btn-agro-sm">Ver todos</a>
    </div>
    <div class="data-table-wrap">
        <table class="data-table">
            <thead>
                <tr>
                    <th>Pedido</th>
                    <th>Comprador</th>
                    <th>Productos</th>
                    <th>Total</th>
                    <th>Estado</th>
                    <th>Fecha</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><strong>#PED-047</strong></td>
                    <td>Restaurante El Fog&#243;n</td>
                    <td>Papa criolla (50 kg), Cebolla (20 kg)</td>
                    <td>$185.000</td>
                    <td><span class="badge-agro badge-yellow">En preparaci&#243;n</span></td>
                    <td>23 Oct 2026</td>
                </tr>
                <tr>
                    <td><strong>#PED-046</strong></td>
                    <td>Tienda Do&#241;a Mar&#237;a</td>
                    <td>Zanahoria (30 kg)</td>
                    <td>$72.000</td>
                    <td><span class="badge-agro badge-green">Entregado</span></td>
                    <td>22 Oct 2026</td>
                </tr>
                <tr>
                    <td><strong>#PED-045</strong></td>
                    <td>Plaza Cajic&#225;</td>
                    <td>Arveja (15 kg), Habichuela (10 kg)</td>
                    <td>$112.000</td>
                    <td><span class="badge-agro badge-green">Entregado</span></td>
                    <td>21 Oct 2026</td>
                </tr>
                <tr>
                    <td><strong>#PED-044</strong></td>
                    <td>Carlos Ram&#237;rez</td>
                    <td>Papa pastusa (100 kg)</td>
                    <td>$230.000</td>
                    <td><span class="badge-agro badge-blue">Confirmado</span></td>
                    <td>21 Oct 2026</td>
                </tr>
            </tbody>
        </table>
    </div>

</asp:Content>
