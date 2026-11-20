/* ============================================================
   AgroMarket-Connect - JavaScript principal
   ============================================================ */

// --- Navegacion del sidebar ---
function setActiveSidebarItem(pageName) {
    var items = document.querySelectorAll('.sidebar-item');
    for (var i = 0; i < items.length; i++) {
        var item = items[i];
        if (item.getAttribute('data-page') === pageName) {
            item.classList.add('active');
        } else {
            item.classList.remove('active');
        }
    }
}

// --- Login: Toggle de roles ---
function setLoginRole(role) {
    var btns = document.querySelectorAll('#loginForm .role-toggle button');
    for (var i = 0; i < btns.length; i++) {
        btns[i].classList.remove('active');
    }
    if (role === 'productor') btns[0].classList.add('active');
    else btns[1].classList.add('active');
}

function setRegRole(role) {
    var btns = document.querySelectorAll('#registerForm .role-toggle button');
    for (var i = 0; i < btns.length; i++) {
        btns[i].classList.remove('active');
    }
    var fields = document.getElementById('regProducerFields');
    if (role === 'productor') {
        btns[0].classList.add('active');
        if (fields) fields.style.display = '';
    } else {
        btns[1].classList.add('active');
        if (fields) fields.style.display = 'none';
    }
}

function showRegister() {
    var loginForm = document.getElementById('loginForm');
    var registerForm = document.getElementById('registerForm');
    if (loginForm) loginForm.style.display = 'none';
    if (registerForm) registerForm.style.display = '';
}

function showLogin() {
    var loginForm = document.getElementById('loginForm');
    var registerForm = document.getElementById('registerForm');
    if (loginForm) loginForm.style.display = '';
    if (registerForm) registerForm.style.display = 'none';
}

// --- Modal de nuevo producto ---
function openModalProducto() {
    var modal = document.getElementById('modalProducto');
    if (modal) modal.style.display = 'flex';
}

function closeModalProducto() {
    var modal = document.getElementById('modalProducto');
    if (modal) modal.style.display = 'none';
}

// --- Sidebar mobile toggle ---
function toggleSidebar() {
    var sidebar = document.getElementById('sidebar');
    if (sidebar) sidebar.classList.toggle('show-mobile');
}

// --- Seleccionar fila de pedido ---
function selectOrder(row) {
    var rows = row.parentElement.querySelectorAll('tr');
    for (var i = 0; i < rows.length; i++) {
        rows[i].style.background = '';
    }
    row.style.background = 'var(--accent-light)';
}

// --- Modal de nuevo pedido ---
var productosPedido = {
    'papa_criolla':  { nombre: 'Papa criolla',     precio: 2800, unidad: 'kg' },
    'zanahoria':     { nombre: 'Zanahoria',        precio: 2400, unidad: 'kg' },
    'cebolla':       { nombre: 'Cebolla cabezona', precio: 3200, unidad: 'kg' },
    'arveja':        { nombre: 'Arveja verde',     precio: 5600, unidad: 'kg' },
    'tomate':        { nombre: 'Tomate chonto',    precio: 3000, unidad: 'kg' },
    'lechuga':       { nombre: 'Lechuga crespa',   precio: 1800, unidad: 'und' }
};

function openModalPedido() {
    var modal = document.getElementById('modalPedido');
    if (modal) modal.style.display = 'flex';
}

function closeModalPedido() {
    var modal = document.getElementById('modalPedido');
    if (modal) modal.style.display = 'none';
}

function formatPrecio(valor) {
    return '$' + valor.toString().replace(/\B(?=(\d{3})+(?!\d))/g, '.');
}

function agregarProductoPedido() {
    var select = document.querySelector('[id$="ddlProductoPedido"]');
    var inputCantidad = document.querySelector('[id$="txtCantidadPedido"]');
    if (!select || !inputCantidad) return;

    var productoKey = select.value;
    var cantidad = parseInt(inputCantidad.value);
    if (!productoKey || !cantidad || cantidad <= 0) return;

    var producto = productosPedido[productoKey];
    if (!producto) return;

    var subtotal = producto.precio * cantidad;
    var tbody = document.getElementById('bodyProductosPedido');

    // Quitar fila ejemplo si existe
    var filaEjemplo = document.getElementById('filaPedidoEjemplo');
    if (filaEjemplo) filaEjemplo.remove();

    var tr = document.createElement('tr');
    tr.innerHTML =
        '<td>' + producto.nombre + '</td>' +
        '<td>' + cantidad + ' ' + producto.unidad + '</td>' +
        '<td>' + formatPrecio(producto.precio) + '</td>' +
        '<td>' + formatPrecio(subtotal) + '</td>' +
        '<td><button type="button" class="btn-agro btn-agro-danger btn-agro-sm" onclick="quitarProductoPedido(this)">&#10005;</button></td>';
    tr.setAttribute('data-subtotal', subtotal);
    tbody.appendChild(tr);

    // Limpiar seleccion
    select.value = '';
    inputCantidad.value = '';

    actualizarTotalPedido();
}

function quitarProductoPedido(btn) {
    var fila = btn.closest('tr');
    if (fila) fila.remove();
    actualizarTotalPedido();
}

function actualizarTotalPedido() {
    var filas = document.querySelectorAll('#bodyProductosPedido tr');
    var total = 0;
    var count = 0;
    for (var i = 0; i < filas.length; i++) {
        var sub = filas[i].getAttribute('data-subtotal');
        if (sub) {
            total += parseInt(sub);
            count++;
        }
    }
    var spanTotal = document.getElementById('totalPedido');
    var spanCount = document.getElementById('totalProductosPedido');
    if (spanTotal) spanTotal.textContent = formatPrecio(total);
    if (spanCount) spanCount.textContent = count + (count === 1 ? ' producto' : ' productos');
}

// --- Inicializacion al cargar ---
document.addEventListener('DOMContentLoaded', function () {
    // Cerrar modales al hacer clic fuera
    var modales = document.querySelectorAll('.modal-agro-overlay');
    for (var i = 0; i < modales.length; i++) {
        (function (modal) {
            modal.addEventListener('click', function (e) {
                if (e.target === modal) modal.style.display = 'none';
            });
        })(modales[i]);
    }
});
