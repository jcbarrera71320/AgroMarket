<%@ Page Title="Gesti&#243;n de pedidos" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Pedidos.aspx.cs" Inherits="AgroMarket.View.Pedidos" %>

<asp:Content ID="TitleContent" ContentPlaceHolderID="PageTitle" runat="server">
    Gesti&#243;n de pedidos
</asp:Content>

<asp:Content ID="ActionsContent" ContentPlaceHolderID="TopBarActions" runat="server">
    <button type="button" class="btn-agro btn-agro-primary btn-agro-sm">+ Nuevo pedido</button>
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <!-- Estadisticas de pedidos -->
    <div class="stats-row">
        <div class="stat-card">
            <div class="label">Nuevos</div>
            <div class="value" style="color:var(--info)">3</div>
        </div>
        <div class="stat-card">
            <div class="label">En preparaci&#243;n</div>
            <div class="value" style="color:var(--warning)">2</div>
        </div>
        <div class="stat-card">
            <div class="label">Entregados (mes)</div>
            <div class="value" style="color:var(--accent)">18</div>
        </div>
    </div>

    <!-- Panel dividido: lista + detalle -->
    <div class="detail-panel">
        <div>
            <div class="section-header"><h3>Listado de pedidos</h3></div>
            <div class="data-table-wrap">
                <table class="data-table">
                    <thead>
                        <tr>
                            <th>Pedido</th>
                            <th>Comprador</th>
                            <th>Estado</th>
                            <th>Total</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr style="background:var(--accent-light)" onclick="selectOrder(this)">
                            <td><strong>#PED-047</strong></td>
                            <td>Rest. El Fog&#243;n</td>
                            <td><span class="badge-agro badge-yellow">En preparaci&#243;n</span></td>
                            <td>$185.000</td>
                        </tr>
                        <tr onclick="selectOrder(this)">
                            <td><strong>#PED-046</strong></td>
                            <td>Tienda Do&#241;a Mar&#237;a</td>
                            <td><span class="badge-agro badge-green">Entregado</span></td>
                            <td>$72.000</td>
                        </tr>
                        <tr onclick="selectOrder(this)">
                            <td><strong>#PED-045</strong></td>
                            <td>Plaza Cajic&#225;</td>
                            <td><span class="badge-agro badge-green">Entregado</span></td>
                            <td>$112.000</td>
                        </tr>
                        <tr onclick="selectOrder(this)">
                            <td><strong>#PED-044</strong></td>
                            <td>Carlos Ram&#237;rez</td>
                            <td><span class="badge-agro badge-blue">Confirmado</span></td>
                            <td>$230.000</td>
                        </tr>
                        <tr onclick="selectOrder(this)">
                            <td><strong>#PED-043</strong></td>
                            <td>Coop. Sabana</td>
                            <td><span class="badge-agro badge-green">Entregado</span></td>
                            <td>$98.000</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>

        <!-- Detalle del pedido seleccionado -->
        <div>
            <div class="detail-section">
                <h3>Detalle pedido #PED-047</h3>
                <div class="detail-row"><span class="label">Comprador</span><span class="val">Restaurante El Fog&#243;n</span></div>
                <div class="detail-row"><span class="label">Tel&#233;fono</span><span class="val">315 234 5678</span></div>
                <div class="detail-row"><span class="label">Municipio</span><span class="val">Cajic&#225;</span></div>
                <div class="detail-row"><span class="label">Fecha pedido</span><span class="val">23 Oct 2026</span></div>
                <div class="detail-row"><span class="label">Papa criolla</span><span class="val">50 kg &#215; $2.800</span></div>
                <div class="detail-row"><span class="label">Cebolla cabezona</span><span class="val">20 kg &#215; $3.200</span></div>
                <div class="detail-row" style="border-top:1px solid var(--border);padding-top:10px;margin-top:4px">
                    <span class="label" style="font-weight:600;color:var(--fg)">Total</span>
                    <span class="val" style="font-size:16px;color:var(--accent)">$185.000</span>
                </div>
            </div>

            <div class="detail-section" style="margin-top:16px">
                <h3>Estado del pedido</h3>
                <div class="order-timeline">
                    <div class="timeline-step">
                        <div class="timeline-dot done">
                            <svg width="12" height="12" viewBox="0 0 24 24" fill="none" stroke="#fff" stroke-width="3"><path d="M20 6L9 17l-5-5"/></svg>
                        </div>
                        <div class="timeline-content">
                            <h4>Pedido recibido</h4>
                            <p>23 Oct 2026, 09:15 AM</p>
                        </div>
                    </div>
                    <div class="timeline-step">
                        <div class="timeline-dot done">
                            <svg width="12" height="12" viewBox="0 0 24 24" fill="none" stroke="#fff" stroke-width="3"><path d="M20 6L9 17l-5-5"/></svg>
                        </div>
                        <div class="timeline-content">
                            <h4>Confirmado por productor</h4>
                            <p>23 Oct 2026, 10:30 AM</p>
                        </div>
                    </div>
                    <div class="timeline-step">
                        <div class="timeline-dot current">
                            <svg width="12" height="12" viewBox="0 0 24 24" fill="none" stroke="#fff" stroke-width="3"><circle cx="12" cy="12" r="4"/></svg>
                        </div>
                        <div class="timeline-content">
                            <h4>En preparaci&#243;n</h4>
                            <p>Empaque y alistamiento</p>
                        </div>
                    </div>
                    <div class="timeline-step">
                        <div class="timeline-dot"></div>
                        <div class="timeline-content">
                            <h4>Listo para entrega</h4>
                            <p>Pendiente</p>
                        </div>
                    </div>
                    <div class="timeline-step">
                        <div class="timeline-dot"></div>
                        <div class="timeline-content">
                            <h4>Entregado</h4>
                            <p>Pendiente</p>
                        </div>
                    </div>
                </div>
                <asp:Button ID="btnMarcarListo" runat="server" Text="Marcar como listo"
                    CssClass="btn-agro btn-agro-primary btn-agro-sm" OnClick="btnMarcarListo_Click" />
            </div>
        </div>
    </div>

</asp:Content>
