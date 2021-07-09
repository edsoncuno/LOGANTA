using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

using System.ComponentModel.DataAnnotations.Schema;

namespace Application.Models
{
    public class ItemXPedidoXSolicitudDeCotizacion
    {
        public int Id { get; set; }
        [Column(TypeName = "decimal(9,2)")]
        public decimal? PrecioUnitario { get; set; }
        [Column(TypeName = "decimal(9,2)")]
        public decimal? PrecioTotal { get; set; }
        public int? ItemXPedidoId { get; set; }
        public ItemXPedido ItemXPedido { get; set; }
        public int? SolicitudDeCotizacionId { get; set; }
        public SolicitudDeCotizacion SolicitudDeCotizacion { get; set; }
    }
}
