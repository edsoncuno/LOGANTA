using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Application.DTO
{
    public class SalidaItemProveedor
    {
        public int? Id { get; set; }
        public decimal? FactorDeConversion { get; set; }
        public decimal? Precio { get; set; }
        public DateTime? Fecha { get; set; }
        public string UnidadDeMedida { get; set; }
        public int? ItemId { get; set; }
        public int? ProveedorId { get; set; }
    }
}
