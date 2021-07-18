
namespace Application.Models
{
    public class OrdenDeCompra
    {
        public int Id { get; set; }
        public int? CuadroComparativoId { get; set; }
        public CuadroComparativo CuadroComparativo { get; set; }
    }
}
