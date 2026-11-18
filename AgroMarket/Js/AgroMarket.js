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

// --- Inicializacion al cargar ---
document.addEventListener('DOMContentLoaded', function () {
    // Cerrar modal al hacer clic fuera
    var modal = document.getElementById('modalProducto');
    if (modal) {
        modal.addEventListener('click', function (e) {
            if (e.target === modal) closeModalProducto();
        });
    }
});
