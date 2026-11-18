<%@ Page Title="Mapa de productores" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Mapa.aspx.cs" Inherits="AgroMarket.View.Mapa" %>

<asp:Content ID="TitleContent" ContentPlaceHolderID="PageTitle" runat="server">
    Mapa de productores
</asp:Content>

<asp:Content ID="ActionsContent" ContentPlaceHolderID="TopBarActions" runat="server">
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <!-- Mapa con pines -->
    <div class="map-container">
        <div class="map-grid"></div>
        <div class="map-pins">
            <div class="map-pin" style="top:25%;left:35%">
                <div class="map-pin-label">Finca La Esperanza - Cajic&#225;</div>
            </div>
            <div class="map-pin" style="top:40%;left:55%">
                <div class="map-pin-label">Finca El Recuerdo - Cogua</div>
            </div>
            <div class="map-pin" style="top:60%;left:30%">
                <div class="map-pin-label">Finca San Miguel - Zipaquir&#225;</div>
            </div>
            <div class="map-pin" style="top:35%;left:70%">
                <div class="map-pin-label">Finca Los Pinos - Tabio</div>
            </div>
            <div class="map-pin" style="top:70%;left:60%">
                <div class="map-pin-label">Finca Villa Rosa - Nemoc&#243;n</div>
            </div>
            <div class="map-pin" style="top:50%;left:42%">
                <div class="map-pin-label">Finca El Progreso - Tocancip&#225;</div>
            </div>
        </div>
        <div class="map-legend">
            <strong style="margin-bottom:2px">Productores - Sabana Centro</strong>
            <div class="map-legend-item">
                <div class="map-legend-dot" style="background:var(--accent)"></div> Productor activo (6)
            </div>
            <div class="map-legend-item">
                <div class="map-legend-dot" style="background:var(--warning)"></div> Sin stock disponible (0)
            </div>
        </div>
    </div>

    <!-- Tabla de productores -->
    <div style="margin-top:20px">
        <div class="section-header"><h3>Productores en la zona</h3></div>
        <div class="data-table-wrap">
            <table class="data-table">
                <thead>
                    <tr>
                        <th>Productor</th>
                        <th>Finca</th>
                        <th>Municipio</th>
                        <th>Productos</th>
                        <th>Estado</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><strong>Juan P&#233;rez</strong></td>
                        <td>La Esperanza</td>
                        <td>Cajic&#225;</td>
                        <td>Papa, tomate, cebolla</td>
                        <td><span class="badge-agro badge-green">Activo</span></td>
                    </tr>
                    <tr>
                        <td><strong>Mar&#237;a L&#243;pez</strong></td>
                        <td>El Recuerdo</td>
                        <td>Cogua</td>
                        <td>Zanahoria, lechuga</td>
                        <td><span class="badge-agro badge-green">Activo</span></td>
                    </tr>
                    <tr>
                        <td><strong>Pedro Garc&#237;a</strong></td>
                        <td>San Miguel</td>
                        <td>Zipaquir&#225;</td>
                        <td>Cebolla, cilantro</td>
                        <td><span class="badge-agro badge-green">Activo</span></td>
                    </tr>
                    <tr>
                        <td><strong>Ana Torres</strong></td>
                        <td>Los Pinos</td>
                        <td>Tabio</td>
                        <td>Arveja, habichuela</td>
                        <td><span class="badge-agro badge-green">Activo</span></td>
                    </tr>
                    <tr>
                        <td><strong>Luis Rojas</strong></td>
                        <td>Villa Rosa</td>
                        <td>Nemoc&#243;n</td>
                        <td>Fresa, mora</td>
                        <td><span class="badge-agro badge-green">Activo</span></td>
                    </tr>
                    <tr>
                        <td><strong>Carmen D&#237;az</strong></td>
                        <td>El Progreso</td>
                        <td>Tocancip&#225;</td>
                        <td>Papa, arveja</td>
                        <td><span class="badge-agro badge-green">Activo</span></td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>

</asp:Content>
