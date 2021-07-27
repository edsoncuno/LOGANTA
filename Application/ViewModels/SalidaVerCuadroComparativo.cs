using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Application.ViewModels
{
    public class SalidaVerCuadroComparativo
    {
        public List<SalidaItemConSusProveedoresCotizados> listaDeItemProveedoresCotizados { get; set; }
    }
    public class SalidaItemConSusProveedoresCotizados
    {
        public int itemId { get; set; }
        public string itemDescripcion { get; set; }
        public string itemUnidadDeMedida { get; set; }
        public int itemCantidad { get; set; }
        public List<SalidaProveedorCotizadoDelItem> listaDeProveedoresCotizados { get; set; }
    }
    public class SalidaProveedorCotizadoDelItem
    {
        public int? proveedorId { get; set; }
        public decimal? ipPrecio { get; set; }
    }
}
