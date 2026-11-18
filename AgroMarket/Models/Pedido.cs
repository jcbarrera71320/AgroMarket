using System;
using System.Collections.Generic;

namespace AgroMarket.Models
{
    public class Pedido
    {
        public int Id { get; set; }
        public string Codigo { get; set; }
        public int CompradorId { get; set; }
        public int ProductorId { get; set; }
        public DateTime FechaPedido { get; set; }
        public string Estado { get; set; }
        public decimal Total { get; set; }
        public List<DetallePedido> Detalles { get; set; }
    }

    public class DetallePedido
    {
        public int Id { get; set; }
        public int PedidoId { get; set; }
        public int ProductoId { get; set; }
        public string NombreProducto { get; set; }
        public decimal Cantidad { get; set; }
        public decimal PrecioUnitario { get; set; }
        public decimal Subtotal { get; set; }
    }
}
