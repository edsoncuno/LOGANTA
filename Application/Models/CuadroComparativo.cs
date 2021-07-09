using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Application.Models
{
    public class CuadroComparativo
    {
        public int Id { get; set; }
        public DateTime? Fecha { get; set; }
        public int? PedidoId { get; set; }
        public Pedido Pedido { get; set; }
    }
}
