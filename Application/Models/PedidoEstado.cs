using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Application.Models
{
    public class PedidoEstado
    {
        public int Id { get; set; }
        public string Descripcion { get; set; }
        public ICollection<Pedido> PedidoS { get; set; }
    }
}
