using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace Application.Models
{
    public class Item
    {
        public int Id { get; set; }
        public string Descripcion { get; set; }
        public string Marca { get; set; }
        [Display(Name = "Unidad de Medida")]
        public string UnidadDeMedida { get; set; }
        public long? ProveedorRucPredeterminado { get; set; }
        public ICollection<ItemXProveedor> ItemXProveedorS { get; set; }
        public ICollection<ItemXPedido> ItemXPedidoS { get; set; }
    }
}
