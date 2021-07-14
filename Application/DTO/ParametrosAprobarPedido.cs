using System.Collections.Generic;
namespace Application.DTO
{
    public class ParametrosAprobarPedido
    {
        public int pedidoId { get; set; }
        public List<ParametroItemPedido> items { get; set; }
    }
}
