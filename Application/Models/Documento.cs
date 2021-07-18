using System;

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
