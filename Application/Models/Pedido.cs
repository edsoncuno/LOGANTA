using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

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
        public string Observaciones1 { get; set; }
        public string Observaciones2 { get; set; }
        public int? PedidoEstadoId { get; set; }
        public PedidoEstado PedidoEstado { get; set; }
        public ICollection<ItemXPedido> ItemXPedidoS { get; set; }
        public ICollection<SolicitudDeCotizacion> SolicitudDeCotizacionS { get; set; }
        public ICollection<Documento> DocumentoS { get; set; }

        //LEO
        public int? AreaUsuariaId { get; set; }
        public AreaUsuaria AreaUsuaria { get; set; }
        public int? ProyectoId { get; set; }
        public Proyecto Proyecto { get; set; }
        public string Prioridad { get; set; }
    }
}
