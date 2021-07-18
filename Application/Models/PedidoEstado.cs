using System.Collections.Generic;

namespace Application.Models
{
    public class PedidoEstado
    {
        public int Id { get; set; }
        public string Descripcion { get; set; }
        public ICollection<Pedido> PedidoS { get; set; }
    }
}
