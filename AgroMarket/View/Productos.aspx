<%@ Page Title="Mis productos" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Productos.aspx.cs" Inherits="AgroMarket.View.Productos" %>

<asp:Content ID="TitleContent" ContentPlaceHolderID="PageTitle" runat="server">
    Mis productos
</asp:Content>

<asp:Content ID="ActionsContent" ContentPlaceHolderID="TopBarActions" runat="server">
    <button type="button" class="btn-agro btn-agro-primary btn-agro-sm" onclick="openModalProducto()">+ Nuevo producto</button>
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="data-table-wrap">
        <table class="data-table">
            <thead>
                <tr>
                    <th>Producto</th>
                    <th>Categor&#237;a</th>
                    <th>Precio/kg</th>
                    <th>Stock</th>
                    <th>Estado</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><strong>&#127834; Papa criolla</strong></td>
                    <td>Tub&#233;rculos</td>
                    <td>$2.800</td>
                    <td>320 kg</td>
                    <td><span class="badge-agro badge-green">Disponible</span></td>
                    <td><button type="button" class="btn-agro btn-agro-secondary btn-agro-sm">Editar</button></td>
                </tr>
                <tr>
                    <td><strong>&#129365; Zanahoria</strong></td>
                    <td>Hortalizas</td>
                    <td>$2.400</td>
                    <td>180 kg</td>
                    <td><span class="badge-agro badge-green">Disponible</span></td>
                    <td><button type="button" class="btn-agro btn-agro-secondary btn-agro-sm">Editar</button></td>
                </tr>
                <tr>
                    <td><strong>&#129370; Cebolla cabezona</strong></td>
                    <td>Hortalizas</td>
                    <td>$3.200</td>
                    <td>95 kg</td>
                    <td><span class="badge-agro badge-yellow">Stock bajo</span></td>
                    <td><button type="button" class="btn-agro btn-agro-secondary btn-agro-sm">Editar</button></td>
                </tr>
                <tr>
                    <td><strong>&#127805; Arveja verde</strong></td>
                    <td>Leguminosas</td>
                    <td>$5.600</td>
                    <td>60 kg</td>
                    <td><span class="badge-agro badge-green">Disponible</span></td>
                    <td><button type="button" class="btn-agro btn-agro-secondary btn-agro-sm">Editar</button></td>
                </tr>
                <tr>
                    <td><strong>&#129373; Habichuela</strong></td>
                    <td>Leguminosas</td>
                    <td>$4.100</td>
                    <td>0 kg</td>
                    <td><span class="badge-agro badge-red">Agotado</span></td>
                    <td><button type="button" class="btn-agro btn-agro-secondary btn-agro-sm">Editar</button></td>
                </tr>
                <tr>
                    <td><strong>&#127813; Tomate chonto</strong></td>
                    <td>Hortalizas</td>
                    <td>$3.000</td>
                    <td>200 kg</td>
                    <td><span class="badge-agro badge-green">Disponible</span></td>
                    <td><button type="button" class="btn-agro btn-agro-secondary btn-agro-sm">Editar</button></td>
                </tr>
                <tr>
                    <td><strong>&#129382; Lechuga crespa</strong></td>
                    <td>Hortalizas</td>
                    <td>$1.800</td>
                    <td>45 und</td>
                    <td><span class="badge-agro badge-yellow">Stock bajo</span></td>
                    <td><button type="button" class="btn-agro btn-agro-secondary btn-agro-sm">Editar</button></td>
                </tr>
            </tbody>
        </table>
    </div>

    <!-- Modal Nuevo Producto -->
    <div class="modal-agro-overlay" id="modalProducto" style="display:none">
        <div class="modal-agro">
            <h3>Nuevo producto</h3>
            <div class="form-group">
                <label>Nombre del producto</label>
                <asp:TextBox ID="txtNombreProducto" runat="server" placeholder="Ej: Papa criolla"></asp:TextBox>
            </div>
            <div class="form-row">
                <div class="form-group">
                    <label>Categor&#237;a</label>
                    <asp:DropDownList ID="ddlCategoria" runat="server">
                        <asp:ListItem Text="Seleccione..." Value="" />
                        <asp:ListItem Text="Tub&#233;rculos" Value="Tuberculos" />
                        <asp:ListItem Text="Hortalizas" Value="Hortalizas" />
                        <asp:ListItem Text="Leguminosas" Value="Leguminosas" />
                        <asp:ListItem Text="Frutas" Value="Frutas" />
                        <asp:ListItem Text="Granos" Value="Granos" />
                        <asp:ListItem Text="Otros" Value="Otros" />
                    </asp:DropDownList>
                </div>
                <div class="form-group">
                    <label>Unidad de medida</label>
                    <asp:DropDownList ID="ddlUnidad" runat="server">
                        <asp:ListItem Text="Kilogramo (kg)" Value="kg" />
                        <asp:ListItem Text="Unidad (und)" Value="und" />
                        <asp:ListItem Text="Arroba (@ 12.5 kg)" Value="arroba" />
                        <asp:ListItem Text="Bulto" Value="bulto" />
                        <asp:ListItem Text="Canastilla" Value="canastilla" />
                    </asp:DropDownList>
                </div>
            </div>
            <div class="form-row">
                <div class="form-group">
                    <label>Precio por unidad ($)</label>
                    <asp:TextBox ID="txtPrecio" runat="server" TextMode="Number" placeholder="0"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label>Cantidad disponible</label>
                    <asp:TextBox ID="txtCantidad" runat="server" TextMode="Number" placeholder="0"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <label>Descripci&#243;n del producto</label>
                <asp:TextBox ID="txtDescripcion" runat="server" TextMode="MultiLine"
                    placeholder="Describa las caracter&#237;sticas de su producto: variedad, tama&#241;o, tipo de cultivo..."></asp:TextBox>
            </div>
            <div class="form-group">
                <label>Tiempo estimado de cosecha</label>
                <asp:DropDownList ID="ddlTiempoCosecha" runat="server">
                    <asp:ListItem Text="Disponible ahora" Value="ahora" />
                    <asp:ListItem Text="1-3 d&#237;as" Value="1-3" />
                    <asp:ListItem Text="4-7 d&#237;as" Value="4-7" />
                    <asp:ListItem Text="1-2 semanas" Value="1-2sem" />
                    <asp:ListItem Text="M&#225;s de 2 semanas" Value="2sem+" />
                </asp:DropDownList>
            </div>
            <div class="modal-actions">
                <button type="button" class="btn-agro btn-agro-secondary" onclick="closeModalProducto()">Cancelar</button>
                <asp:Button ID="btnGuardarProducto" runat="server" Text="Guardar producto"
                    CssClass="btn-agro btn-agro-primary" OnClick="btnGuardarProducto_Click" />
            </div>
        </div>
    </div>

</asp:Content>
