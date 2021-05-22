using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Application.Models
{
    public class Pedido
    {
        public int Id { get; set; }
        public string DireccionDeSolicitante { get; set; }
        public string TipoDeUso { get; set; }
        public string EntregarA { get; set; }
        public string ActividadOperativa { get; set; }
        public string Motivo { get; set; }
        public DateTime? Fecha { get; set; }
        public string Observaciones { get; set; }
        public bool? ValidacionDelSolicitante { get; set; }
        public int? PedidoEstadoId { get; set; }
        public PedidoEstado PedidoEstado { get; set; }
        public ICollection<ItemXPedido> ItemXPedidoS { get; set; }
        public ICollection<PedidoXSolicitudDeCotizacion> PedidoXSolicitudDeCotizacionS { get; set; }
        public ICollection<Documento> DocumentoS { get; set; }
    }
}
