using System;

using System.ComponentModel.DataAnnotations.Schema;

namespace Application.Models
{
    public class ItemXProveedor
    {
        public int Id { get; set; }
        [Column(TypeName = "decimal(2,2)")]
        public decimal? FactorDeConversion { get; set; }
        [Column(TypeName = "decimal(5,2)")]
        public decimal? Precio { get; set; }
        public DateTime? Fecha { get; set; }
        public string UnidadDeMedida { get; set; }
        public int? ItemId { get; set; }
        public Item Item { get; set; }
        public int? ProveedorId { get; set; }
        public Proveedor Proveedor { get; set; }
    }
}
