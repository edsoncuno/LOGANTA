using System.Collections.Generic;

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
    }
}
