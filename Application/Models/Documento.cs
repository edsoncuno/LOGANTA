using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Application.Models
{
    public class Documento
    {
        public int Id { get; set; }
        public DateTime? Fecha { get; set; }
        public string Ruta { get; set; }
        public string Observaciones { get; set; }
        public int? PedidoId { get; set; }
        public Pedido Pedido { get; set; }
    }
}
