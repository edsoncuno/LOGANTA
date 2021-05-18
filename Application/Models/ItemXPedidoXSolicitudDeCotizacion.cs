using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Application.Models
{
    public class ItemXPedidoXSolicitudDeCotizacion
    {
        public int Id { get; set; }
        public decimal PrecioUnitario { get; set; }
        public decimal PrecioTotal { get; set; }
        public int ItemXPedidoId { get; set; }
        public ItemXPedido ItemXPedido { get; set; }
        public int SolicitudDeCotizacionID { get; set; }
        public SolicitudDeCotizacion SolicitudDeCotizacion { get; set; }
    }
}
