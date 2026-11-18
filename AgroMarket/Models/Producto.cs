using System;

namespace AgroMarket.Models
{
    public class Producto
    {
        public int Id { get; set; }
        public int ProductorId { get; set; }
        public string Nombre { get; set; }
        public string Categoria { get; set; }
        public string UnidadMedida { get; set; }
        public decimal PrecioUnidad { get; set; }
        public decimal CantidadDisponible { get; set; }
        public string Descripcion { get; set; }
        public string TiempoCosecha { get; set; }
        public string Estado { get; set; }
        public DateTime FechaCreacion { get; set; }
        public bool Activo { get; set; }
    }
}
