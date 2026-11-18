<%@ Page Title="Cat&#225;logo de productos" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Catalogo.aspx.cs" Inherits="AgroMarket.View.Catalogo" %>

<asp:Content ID="TitleContent" ContentPlaceHolderID="PageTitle" runat="server">
    Cat&#225;logo de productos
</asp:Content>

<asp:Content ID="ActionsContent" ContentPlaceHolderID="TopBarActions" runat="server">
    <a href="Pedidos" class="btn-agro btn-agro-primary btn-agro-sm">+ Hacer pedido</a>
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <!-- Filtros por categoria -->
    <div class="filter-bar">
        <button type="button" class="btn-agro btn-agro-primary btn-agro-sm">Todos</button>
        <button type="button" class="btn-agro btn-agro-secondary btn-agro-sm">Tub&#233;rculos</button>
        <button type="button" class="btn-agro btn-agro-secondary btn-agro-sm">Hortalizas</button>
        <button type="button" class="btn-agro btn-agro-secondary btn-agro-sm">Leguminosas</button>
        <button type="button" class="btn-agro btn-agro-secondary btn-agro-sm">Frutas</button>
    </div>

    <!-- Grid de productos -->
    <div class="products-grid">
        <div class="product-card">
            <div class="product-img">&#127834;
                <span class="badge-agro badge-green stock-badge">Disponible</span>
            </div>
            <div class="product-info">
                <h3>Papa criolla</h3>
                <div class="producer">Finca La Esperanza - Cajic&#225;</div>
                <div class="price">$2.800 <span class="unit">/ kg</span></div>
            </div>
        </div>

        <div class="product-card">
            <div class="product-img">&#129365;
                <span class="badge-agro badge-green stock-badge">Disponible</span>
            </div>
            <div class="product-info">
                <h3>Zanahoria</h3>
                <div class="producer">Finca El Recuerdo - Cogua</div>
                <div class="price">$2.400 <span class="unit">/ kg</span></div>
            </div>
        </div>

        <div class="product-card">
            <div class="product-img">&#127813;
                <span class="badge-agro badge-green stock-badge">Disponible</span>
            </div>
            <div class="product-info">
                <h3>Tomate chonto</h3>
                <div class="producer">Finca La Esperanza - Cajic&#225;</div>
                <div class="price">$3.000 <span class="unit">/ kg</span></div>
            </div>
        </div>

        <div class="product-card">
            <div class="product-img">&#129370;
                <span class="badge-agro badge-yellow stock-badge">Stock bajo</span>
            </div>
            <div class="product-info">
                <h3>Cebolla cabezona</h3>
                <div class="producer">Finca San Miguel - Zipaquir&#225;</div>
                <div class="price">$3.200 <span class="unit">/ kg</span></div>
            </div>
        </div>

        <div class="product-card">
            <div class="product-img">&#127805;
                <span class="badge-agro badge-green stock-badge">Disponible</span>
            </div>
            <div class="product-info">
                <h3>Arveja verde</h3>
                <div class="producer">Finca Los Pinos - Tabio</div>
                <div class="price">$5.600 <span class="unit">/ kg</span></div>
            </div>
        </div>

        <div class="product-card">
            <div class="product-img">&#129382;
                <span class="badge-agro badge-yellow stock-badge">Stock bajo</span>
            </div>
            <div class="product-info">
                <h3>Lechuga crespa</h3>
                <div class="producer">Finca El Recuerdo - Cogua</div>
                <div class="price">$1.800 <span class="unit">/ und</span></div>
            </div>
        </div>
    </div>

</asp:Content>
