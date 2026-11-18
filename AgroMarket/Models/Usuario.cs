using System;

namespace AgroMarket.Models
{
    public class Usuario
    {
        public int Id { get; set; }
        public string NombreCompleto { get; set; }
        public string Email { get; set; }
        public string Telefono { get; set; }
        public string Municipio { get; set; }
        public string Rol { get; set; }
        public string NombreFinca { get; set; }
        public string ProductosPrincipales { get; set; }
        public DateTime FechaRegistro { get; set; }
        public bool Activo { get; set; }
    }
}
