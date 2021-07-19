using System;
using System.Collections.Generic;
using System.Linq;


namespace Application.Models
{
    public class SolicitudDeCotizacion
    {
        public int Id { get; set; }
        public DateTime? Fecha { get; set; }
        public int? ProveedorId { get; set; }
        public Proveedor Proveedor { get; set; }
        public int? SolicitudDeCotizacionEstadoId { get; set; }
        public SolicitudDeCotizacionEstado SolicitudDeCotizacionEstado { get; set; }
        public int? PedidoId { get; set; }
        public Pedido Pedido { get; set; }
        public int? CuadroComparativoId { get; set; }
        public CuadroComparativo CuadroComparativo { get; set; }
    }
}
