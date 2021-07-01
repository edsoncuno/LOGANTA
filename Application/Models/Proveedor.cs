using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Application.Models
{
    public class Proveedor
    {
        public int Id { get; set; }
        public long? Ruc { get; set; }
        public string Nombre { get; set; }
        public string Direccion { get; set; }
        public string RazonSocial { get; set; }
        public int? Telefono { get; set; }
        public string Correo { get; set; }
        public ICollection<ItemXProveedor> ItemXProceedorS { get; set; }
        public ICollection<SolicitudDeCotizacion> SolicitudDeCotizacionS { get; set; }
        public ICollection<ItemXPedido> ItemXPedidoS { get; set; }
    }
}
