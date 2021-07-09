using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Application.Models
{
    public class SolicitudDeCotizacionEstado
    {
        public int Id { get; set; }
        public string Descripcion { get; set; }
        public ICollection<SolicitudDeCotizacion> SolicitudDeCotizacionS { get; set; }
    }
}
