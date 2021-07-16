using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using Application.Models;

using Application.DTO;

namespace Application.Controllers
{
    public class PedidoController : Controller
    {
        private readonly ApplicationDbContext _context;
        /*
         * Vistas
         */
        public PedidoController(ApplicationDbContext context)
        {
            _context = context;
        }
        public IActionResult ListarPendientes()
        {
            return View();
        }
        public IActionResult MostrarPendiente(int id)
        {
            return View();
        }
        public IActionResult MostrarAprobadoPorElSolicitante(int id)
        {
            return View();
        }
        public IActionResult Index()
        {
            return View();
        }
        public IActionResult ListarAprobadosPorElSolicitante()
        {
            return View();
        }
        public IActionResult ListarAprobadosPorLogistica()
        {
            return View();
        }
        public IActionResult MostrarAprobadoPorLogistica(int id)
        {
            return View();
        }
        /*
         * GET
         */
        public JsonResult ObtenerTodosLosPedidosAprobadosPorElSolicitante()
        {
            var todosLosPedidosPendientes = from pedido in _context.Pedido where pedido.PedidoEstadoId == 2 select pedido;
            return Json(todosLosPedidosPendientes);
        }
        public JsonResult ObtenerTodosLosPedidosAprobadosPorLogistica()
        {
            var todosLosPedidosPendientes = from pedido in _context.Pedido where pedido.PedidoEstadoId == 4 select pedido;
            return Json(todosLosPedidosPendientes);
        }
        public JsonResult ObtenerTodosLosPedidosPendientes()
        {
            var todosLosPedidosPendientes = from pedido in _context.Pedido where pedido.PedidoEstadoId == 1 select pedido;
            return Json(todosLosPedidosPendientes);
        }
        public JsonResult ObtenerTodosLosPedidos()
        {
            var todosLosPedidos = from objPedido in _context.Pedido join objPedidoEstado in _context.PedidoEstado on objPedido.PedidoEstadoId equals objPedidoEstado.Id select new { objPedido.Id, objPedido.DireccionDeSolicitante, objPedido.TipoDeUso, objPedido.EntregarA, objPedido.ActividadOperativa, objPedido.Motivo, objPedido.Fecha, objPedidoEstado.Descripcion };
            return Json(todosLosPedidos);
        }
        public JsonResult ObtenerPedidoConPedidoId(int id)
        {
            var todosLosPedidosPendientes = from pedido in _context.Pedido where pedido.Id == id select pedido;
            return Json(todosLosPedidosPendientes);
        }
        public JsonResult ObtenerItemsConPedidoId(int id)
        {
            var itemsDelPedido = from objItem in _context.Item 
                                 join objItemXPedido in _context.ItemXPedido on objItem.Id equals objItemXPedido.ItemId 
                                 join objPedido in _context.Pedido on objItemXPedido.PedidoId equals objPedido.Id 
                                 where objPedido.Id == id select new 
                                 { 
                                   itemId = objItem.Id, 
                                   itemDescripcion = objItem.Descripcion, 
                                   ipCantidad = objItemXPedido.Cantidad, 
                                   ipId = objItemXPedido.Id, 
                                   itemUnidadDeMedida = objItem.UnidadDeMedida 
                                 };
            return Json(itemsDelPedido);
        }
        public JsonResult ObtenerTodosLosPedidosPendientesConFiltro(string campo, string valor)
        {
            var todosLosPedidosPendientes = from pedido in _context.Pedido where pedido.PedidoEstadoId == 1 select pedido;
            if (campo == null)
            {
                return Json(todosLosPedidosPendientes);
            }
            else
            {
                if (campo == "id")
                {
                    try
                    {
                        int codigo = Convert.ToInt32(valor);
                        todosLosPedidosPendientes = from pedido in _context.Pedido where pedido.Id >= codigo && pedido.PedidoEstadoId == 1 select pedido;
                        return Json(todosLosPedidosPendientes);
                    }
                    catch
                    {
                        return Json(todosLosPedidosPendientes);
                    }
                }
                else
                {
                    if (campo == "actividadOperativa")
                    {
                        todosLosPedidosPendientes = from pedido in _context.Pedido where pedido.ActividadOperativa == valor && pedido.PedidoEstadoId == 1 select pedido;
                        return Json(todosLosPedidosPendientes);
                    }
                    else
                    {
                        if (campo == "tipoDeUso")
                        {
                            todosLosPedidosPendientes = from pedido in _context.Pedido where pedido.TipoDeUso == valor && pedido.PedidoEstadoId == 1 select pedido;
                            return Json(todosLosPedidosPendientes);
                        }
                        else
                        {
                            try
                            {
                                DateTime fecha = Convert.ToDateTime(valor);
                                todosLosPedidosPendientes = from pedido in _context.Pedido where pedido.Fecha >= fecha && pedido.PedidoEstadoId == 1 select pedido;
                                return Json(todosLosPedidosPendientes);
                            }
                            catch
                            {
                                return Json(todosLosPedidosPendientes);
                            }
                        }
                    }
                }
            }
        }
        /*
         * POST
         */
        [HttpPost]
        public async Task<JsonResult> AprobarPedidoPendiente([FromBody] ParametrosAprobarPedido obj)
        {
            var pedidoQueQuiero = from pedido in _context.Pedido where pedido.Id == obj.pedidoId select pedido;
            Pedido objPedido = new Pedido();
            objPedido = pedidoQueQuiero.Single();
            objPedido.PedidoEstadoId = 2;
            actualizarItemsDelPedido(obj.items);
            _context.Update(objPedido);
             await _context.SaveChangesAsync();
            //return Json(new { newUrl = Url.Action("Edit", "Cotizacion", new { id = c.CotizacionesId }) });
            return Json(new { newUrl = Url.Action("ListarPendientes", "Pedido") });
        }
        [HttpPost]
        public async Task<JsonResult> DesaprobarPedidoPendiente([FromBody] ParametrosDesaprobarPedido obj)
        {
            var pedidoQueQuiero = from pedido in _context.Pedido where pedido.Id == obj.pedidoId select pedido;
            Pedido objPedido = new Pedido();
            objPedido = pedidoQueQuiero.Single();
            objPedido.Observaciones1 = obj.observaciones;
            objPedido.PedidoEstadoId = 3;
            actualizarItemsDelPedido(obj.items);
            _context.Update(objPedido);
            await _context.SaveChangesAsync();
            return Json(new { newUrl = Url.Action("ListarPendientes", "Pedido") });
        }
        [HttpPost]
        public async Task<JsonResult> AprobarPedidoAprobadoPorElSolicitante([FromBody] ParametrosAprobarPedido obj)
        {
            var pedidoQueQuiero = from pedido in _context.Pedido where pedido.Id == obj.pedidoId select pedido;
            Pedido objPedido = new Pedido();
            objPedido = pedidoQueQuiero.Single();
            objPedido.PedidoEstadoId = 4;
            actualizarItemsDelPedido(obj.items);
            _context.Update(objPedido);
            await _context.SaveChangesAsync();
            return Json(new { newUrl = Url.Action("ListarAprobadosPorElSolicitante", "Pedido") });
        }
        [HttpPost]
        public async Task<JsonResult> DesaprobarPedidoAprobadoPorElSolicitante([FromBody] ParametrosDesaprobarPedido obj)
        {
            var pedidoQueQuiero = from pedido in _context.Pedido where pedido.Id == obj.pedidoId select pedido;
            Pedido objPedido = new Pedido();
            objPedido = pedidoQueQuiero.Single();
            objPedido.PedidoEstadoId = 5;
            actualizarItemsDelPedido(obj.items);
            _context.Update(objPedido);
            await _context.SaveChangesAsync();
            return Json(new { newUrl = Url.Action("ListarAprobadosPorElSolicitante", "Pedido") });
        }
        /*
         * Auxiliar
         */
        public void actualizarItemsDelPedido(List<ParametroItemPedido> itemsDelPedido)
        {
            foreach (ParametroItemPedido item in itemsDelPedido)
            {
                var objItemXPedidoQueBusco = from objItemXPedido in _context.ItemXPedido where objItemXPedido.Id == item.ipId select objItemXPedido;
                ItemXPedido objItemXPedidoEncontrado = new ItemXPedido();
                objItemXPedidoEncontrado = objItemXPedidoQueBusco.Single();
                if (item.ipCantidad == 0)
                {
                    _context.ItemXPedido.Remove(objItemXPedidoEncontrado);
                }
                else
                {
                    objItemXPedidoEncontrado.Cantidad = item.ipCantidad;
                    _context.Update(objItemXPedidoEncontrado);
                }
            }
        }
    }
}
