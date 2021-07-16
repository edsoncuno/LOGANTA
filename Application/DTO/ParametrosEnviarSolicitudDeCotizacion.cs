using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Application.DTO
{
    public class ParametrosEnviarSolicitudDeCotizacion
    {
        public int pedidoId { get; set; }
        public List<ParametroRuc> rucs { get; set; }
    }
}