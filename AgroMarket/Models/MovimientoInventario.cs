using System;

namespace AgroMarket.Models
{
    public class MovimientoInventario
    {
        public int Id { get; set; }
        public int ProductoId { get; set; }
        public string TipoMovimiento { get; set; }
        public decimal Cantidad { get; set; }
        public decimal StockResultante { get; set; }
        public string Referencia { get; set; }
        public DateTime Fecha { get; set; }
    }
}
