using System.Collections.Generic;

namespace Application.Models
{
    public class SolicitudDeCotizacionEstado
    {
        public int Id { get; set; }
        public string Descripcion { get; set; }
        public ICollection<SolicitudDeCotizacion> SolicitudDeCotizacionS { get; set; }
    }
}