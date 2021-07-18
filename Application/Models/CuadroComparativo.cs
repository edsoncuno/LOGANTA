using System;
using System.Collections.Generic;

namespace Application.Models
{
    public class CuadroComparativo
    {
        public int Id { get; set; }
        public DateTime? Fecha { get; set; }
        public ICollection<SolicitudDeCotizacion> SolicitudDeCotizacionS { get; set; }
        public ICollection<OrdenDeCompra> OrdenDeCompraS { get; set; }
    }
}
