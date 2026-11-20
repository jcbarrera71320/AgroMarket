<%@ Page Title="Gesti&#243;n de pedidos" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Pedidos.aspx.cs" Inherits="AgroMarket.View.Pedidos" %>

<asp:Content ID="TitleContent" ContentPlaceHolderID="PageTitle" runat="server">
    Gesti&#243;n de pedidos
</asp:Content>

<asp:Content ID="ActionsContent" ContentPlaceHolderID="TopBarActions" runat="server">
    <button type="button" class="btn-agro btn-agro-primary btn-agro-sm" onclick="openModalPedido()">+ Nuevo pedido</button>
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

    <!-- Modal Nuevo Pedido -->
    <div class="modal-agro-overlay" id="modalPedido" style="display:none">
        <div class="modal-agro">
            <h3>Nuevo pedido</h3>

            <div class="form-group">
                <label>Comprador</label>
                <asp:DropDownList ID="ddlComprador" runat="server">
                    <asp:ListItem Text="Seleccione comprador..." Value="" />
                    <asp:ListItem Text="Restaurante El Fog&#243;n - Cajic&#225;" Value="1" />
                    <asp:ListItem Text="Tienda Do&#241;a Mar&#237;a - Zipaquir&#225;" Value="2" />
                    <asp:ListItem Text="Plaza Cajic&#225;" Value="3" />
                    <asp:ListItem Text="Carlos Ram&#237;rez - Ch&#237;a" Value="4" />
                    <asp:ListItem Text="Cooperativa Sabana - Cogua" Value="5" />
                </asp:DropDownList>
            </div>

            <div class="detail-section" style="margin-bottom:16px">
                <h3>Agregar productos al pedido</h3>

                <div class="form-row">
                    <div class="form-group">
                        <label>Producto</label>
                        <asp:DropDownList ID="ddlProductoPedido" runat="server">
                            <asp:ListItem Text="Seleccione..." Value="" />
                            <asp:ListItem Text="Papa criolla - $2.800/kg" Value="papa_criolla" />
                            <asp:ListItem Text="Zanahoria - $2.400/kg" Value="zanahoria" />
                            <asp:ListItem Text="Cebolla cabezona - $3.200/kg" Value="cebolla" />
                            <asp:ListItem Text="Arveja verde - $5.600/kg" Value="arveja" />
                            <asp:ListItem Text="Tomate chonto - $3.000/kg" Value="tomate" />
                            <asp:ListItem Text="Lechuga crespa - $1.800/und" Value="lechuga" />
                        </asp:DropDownList>
                    </div>
                    <div class="form-group">
                        <label>Cantidad</label>
                        <asp:TextBox ID="txtCantidadPedido" runat="server" TextMode="Number" placeholder="0"></asp:TextBox>
                    </div>
                </div>
                <button type="button" class="btn-agro btn-agro-secondary btn-agro-sm" onclick="agregarProductoPedido()">+ Agregar producto</button>

                <!-- Tabla de productos agregados -->
                <div class="data-table-wrap" style="margin-top:12px">
                    <table class="data-table" id="tablaProductosPedido">
                        <thead>
                            <tr>
                                <th>Producto</th>
                                <th>Cantidad</th>
                                <th>Precio unit.</th>
                                <th>Subtotal</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody id="bodyProductosPedido">
                            <tr id="filaPedidoEjemplo">
                                <td>Papa criolla</td>
                                <td>50 kg</td>
                                <td>$2.800</td>
                                <td>$140.000</td>
                                <td><button type="button" class="btn-agro btn-agro-danger btn-agro-sm" onclick="quitarProductoPedido(this)">&#10005;</button></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>

            <div class="form-row">
                <div class="form-group">
                    <label>Fecha de entrega estimada</label>
                    <asp:TextBox ID="txtFechaEntrega" runat="server" TextMode="Date"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label>Direcci&#243;n de entrega</label>
                    <asp:TextBox ID="txtDireccionEntrega" runat="server" placeholder="Cra 5 #10-20, Cajic&#225;"></asp:TextBox>
                </div>
            </div>

            <div class="form-group">
                <label>Observaciones</label>
                <asp:TextBox ID="txtObservaciones" runat="server" TextMode="MultiLine"
                    placeholder="Instrucciones especiales de entrega, horario preferido..."></asp:TextBox>
            </div>

            <!-- Resumen del pedido -->
            <div style="background:var(--surface-alt);border-radius:var(--radius-sm);padding:14px 16px;margin-bottom:8px">
                <div class="detail-row">
                    <span class="label">Productos</span>
                    <span class="val" id="totalProductosPedido">1 producto</span>
                </div>
                <div class="detail-row" style="border-top:1px solid var(--border);padding-top:8px;margin-top:4px">
                    <span class="label" style="font-weight:600;color:var(--fg)">Total estimado</span>
                    <span class="val" style="font-size:16px;color:var(--accent)" id="totalPedido">$140.000</span>
                </div>
            </div>

            <div class="modal-actions">
                <button type="button" class="btn-agro btn-agro-secondary" onclick="closeModalPedido()">Cancelar</button>
                <asp:Button ID="btnCrearPedido" runat="server" Text="Crear pedido"
                    CssClass="btn-agro btn-agro-primary" OnClick="btnCrearPedido_Click" />
            </div>
        </div>
    </div>

</asp:Content>
