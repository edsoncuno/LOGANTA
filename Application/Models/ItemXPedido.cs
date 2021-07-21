
using System.ComponentModel.DataAnnotations;

namespace Application.Models
{
    public class ItemXPedido
    {
        public int Id { get; set; }
        [Required(ErrorMessage = "El campo {0} es requerido")]
        [Range(0, 500, ErrorMessage = "La cantidad debe estar en el rango de 0 a 500")]
        public int? Cantidad { get; set; }
        public long? ProveedorRucGanador{ get; set; }
        [Required(ErrorMessage = "Seleccione un {0} valido")]
        [Display(Name = "Item")]
        public int? ItemId { get; set; }
        public Item Item { get; set; }
        public int? PedidoId { get; set; }
        public Pedido Pedido { get; set; }
    }
}