
namespace Application.Models
{
    public class ItemXPedido
    {
        public int Id { get; set; }
        public int? Cantidad { get; set; }
        public long? ProveedorRucGanador{ get; set; }
        public int? ItemId { get; set; }
        public Item Item { get; set; }
        public int? PedidoId { get; set; }
        public Pedido Pedido { get; set; }
    }
}