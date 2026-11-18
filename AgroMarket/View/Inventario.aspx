<%@ Page Title="Inventario" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Inventario.aspx.cs" Inherits="AgroMarket.View.Inventario" %>

<asp:Content ID="TitleContent" ContentPlaceHolderID="PageTitle" runat="server">
    Inventario
</asp:Content>

<asp:Content ID="ActionsContent" ContentPlaceHolderID="TopBarActions" runat="server">
    <button type="button" class="btn-agro btn-agro-primary btn-agro-sm">+ Registrar movimiento</button>
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="stats-row">
        <div class="stat-card">
            <div class="label">Total productos</div>
            <div class="value">7</div>
        </div>
        <div class="stat-card">
            <div class="label">Stock bajo</div>
            <div class="value" style="color:var(--warning)">2</div>
        </div>
        <div class="stat-card">
            <div class="label">Agotados</div>
            <div class="value" style="color:var(--danger)">1</div>
        </div>
    </div>

    <div class="section-header">
        <h3>Movimientos recientes</h3>
    </div>
    <div class="data-table-wrap">
        <table class="data-table">
            <thead>
                <tr>
                    <th>Fecha</th>
                    <th>Producto</th>
                    <th>Movimiento</th>
                    <th>Cantidad</th>
                    <th>Stock resultante</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>23 Oct</td>
                    <td>Papa criolla</td>
                    <td><span class="badge-agro badge-red">Salida (pedido #047)</span></td>
                    <td>-50 kg</td>
                    <td>320 kg</td>
                </tr>
                <tr>
                    <td>23 Oct</td>
                    <td>Cebolla cabezona</td>
                    <td><span class="badge-agro badge-red">Salida (pedido #047)</span></td>
                    <td>-20 kg</td>
                    <td>95 kg</td>
                </tr>
                <tr>
                    <td>22 Oct</td>
                    <td>Zanahoria</td>
                    <td><span class="badge-agro badge-red">Salida (pedido #046)</span></td>
                    <td>-30 kg</td>
                    <td>180 kg</td>
                </tr>
                <tr>
                    <td>20 Oct</td>
                    <td>Papa criolla</td>
                    <td><span class="badge-agro badge-green">Entrada (cosecha)</span></td>
                    <td>+150 kg</td>
                    <td>370 kg</td>
                </tr>
                <tr>
                    <td>20 Oct</td>
                    <td>Tomate chonto</td>
                    <td><span class="badge-agro badge-green">Entrada (cosecha)</span></td>
                    <td>+80 kg</td>
                    <td>200 kg</td>
                </tr>
                <tr>
                    <td>19 Oct</td>
                    <td>Habichuela</td>
                    <td><span class="badge-agro badge-red">Salida (pedido #043)</span></td>
                    <td>-25 kg</td>
                    <td>0 kg</td>
                </tr>
            </tbody>
        </table>
    </div>

</asp:Content>
