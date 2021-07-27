using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;

using Application.Models;
using Application.DTO;
using System.Text.Json;
using Newtonsoft.Json;

namespace Application.Controllers
{
    public class OrdenDeCompraController : Controller
    {
        private readonly ApplicationDbContext _context;

        public OrdenDeCompraController(ApplicationDbContext context)
        {
            _context = context;
        }
        /*
         * VIEW
         */
        public IActionResult Crear(int id)
        {
            return View();
        }
        /*
         * GET
         */
        public JsonResult ObtenerItemProveedorDeLosItemsDelPedidoConLosProveedoresCotizados(int id)
        {
            var resultadoDeLaBusquedaDeProveedor = from objProveedor in _context.Proveedor
                                                   join objSolicitudDeCotizacion in _context.SolicitudDeCotizacion
                                                   on objProveedor.Id equals objSolicitudDeCotizacion.ProveedorId
                                                   join objPedido in _context.Pedido
                                                   on objSolicitudDeCotizacion.PedidoId equals objPedido.Id
                                                   where objPedido.Id == id
                                                   && objSolicitudDeCotizacion.SolicitudDeCotizacionEstadoId == 2
                                                   select objProveedor;
            List<Proveedor> listaDeProveedor = resultadoDeLaBusquedaDeProveedor.ToList();
            var resultadoDeLaBusquedaDeItemPedido = from objItem in _context.Item
                                                    join objItemXPedido in _context.ItemXPedido on objItem.Id equals objItemXPedido.ItemId
                                                    join objPedido in _context.Pedido on objItemXPedido.PedidoId equals objPedido.Id
                                                    where objPedido.Id == id
                                                    select objItemXPedido;
            List<ItemXPedido> listaDeItemPedido = resultadoDeLaBusquedaDeItemPedido.ToList();
            List<ItemXProveedor> listaItemProveedor = new List<ItemXProveedor>();
            for (int i = 0; i < listaDeItemPedido.Count; i++)
            {
                for (int j = 0; j < listaDeProveedor.Count; j++)
                {
                    var resultadoDeLaBusquedaItemProveedor = from objItemProveedor in _context.ItemXProveedor
                                                             where objItemProveedor.ItemId == listaDeItemPedido[i].ItemId
                                                             && objItemProveedor.ProveedorId == listaDeProveedor[j].Id
                                                             && objItemProveedor.Fecha < DateTime.Now
                                                             select objItemProveedor;
                    List<ItemXProveedor> listaResultanteDeLaBusqueda = resultadoDeLaBusquedaItemProveedor.ToList();
                    listaItemProveedor.Add(listaResultanteDeLaBusqueda.Last());
                }
            }
            List<SalidaItemProveedor> listaSalidaItemProveedor = new List<SalidaItemProveedor>();
            foreach (ItemXProveedor objIP in listaItemProveedor)
            {
                SalidaItemProveedor objSalidaItemProveedor = new SalidaItemProveedor();
                objSalidaItemProveedor.Id = objIP.Id;
                objSalidaItemProveedor.ItemId = objIP.ItemId;
                objSalidaItemProveedor.ProveedorId = objIP.ProveedorId;
                objSalidaItemProveedor.Precio = objIP.Precio;
                objSalidaItemProveedor.FactorDeConversion = objIP.FactorDeConversion;
                listaSalidaItemProveedor.Add(objSalidaItemProveedor);
            }
            return Json(listaSalidaItemProveedor);
        }
        /*
         * POST
         */
        [HttpPost]
        public async Task<JsonResult> CrearOrdenDeCompra([FromBody] int parametro)
        {
            if (parametro == 0)
            {
                await _context.SaveChangesAsync();
                return Json(new { newUrl = Url.Action("ListarConSolicitudesDeCotizacionCompletadas", "Pedido"), mensaje = "No se creo la orden de compra - Esta operación funciona", estado = 1 });
            }
            await _context.SaveChangesAsync();
            return Json(new { newUrl = Url.Action("ListarConSolicitudesDeCotizacionCompletadas", "Pedido"), mensaje = "Se creo el la orden de compra exitosamente", estado = 0 });
        }
    }
}