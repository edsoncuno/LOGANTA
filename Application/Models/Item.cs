using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Application.Models
{
    public class Item
    {
        public int Id { get; set; }
        public string Descripcion { get; set; }
        public string Marca { get; set; }
        public string UnidadDeMedida { get; set; }
        public int? ProveedorPredeterminado { get; set; }
        public ICollection<ItemXProveedor> ItemXProveedorS { get; set; }
        public ICollection<ItemXPedido> ItemXPedidoS { get; set; }
    }
}
