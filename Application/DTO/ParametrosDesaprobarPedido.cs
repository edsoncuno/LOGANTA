using System.Collections.Generic;
namespace Application.DTO
{
    public class ParametrosDesaprobarPedido
    {
        public int pedidoId { get; set; }
        public string observaciones { get; set; }
        public List<ParametroItemPedido> items { get; set; }
    }
}