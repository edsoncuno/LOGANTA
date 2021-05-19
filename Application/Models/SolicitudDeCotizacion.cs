using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Application.Models
{
    public class SolicitudDeCotizacion
    {
        public int Id { get; set; }
        public DateTime? Fecha { get; set; }
        public bool? ValidacionDelJefeDeLogistica { get; set; }
        public int? ProveedorId { get; set; }
        public Proveedor Proveedor { get; set; }
        public int? SolicitudDeCotizacionEstadoId { get; set; }
        public SolicitudDeCotizacionEstado SolicitudDeCotizacionEstado { get; set; }
        public ICollection<PedidoXSolicitudDeCotizacion> PedidoXSolicitudDeCotizacionS { get; set; }
        public ICollection<ItemXPedidoXSolicitudDeCotizacion> ItemXPedidoXSolicitudDeCotizacionS { get; set; }
    }
}
