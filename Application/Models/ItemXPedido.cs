using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Application.Models
{
    public class ItemXPedido
    {
        public int Id { get; set; }
        public int Cantidad { get; set; }
        public int ItemId { get; set; }
        public Item Item { get; set; }
        public int PedidoId { get; set; }
        public Pedido Pedido { get; set; }
        public ICollection<ItemXPedidoXSolicitudDeCotizacion> ItemXPedidoXSolicitudDeCotizacionS { get; set; }
    }
}
