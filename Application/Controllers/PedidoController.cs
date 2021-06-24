using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using Application.Models;

using Newtonsoft.Json;

namespace Application.Controllers
{
    public class PedidoController : Controller
    {
        private readonly ApplicationDbContext _context;

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
        public IActionResult Index()
        {
            return View();
        }
        public JsonResult ObtenerTodosLosPedidosPendientes()
        {
            var todosLosPedidosPendientes = from pedido in _context.Pedido where pedido.PedidoEstadoId == 1 select pedido;
            return Json(todosLosPedidosPendientes);
        }
        public JsonResult ObtenerPedido(int id)
        {
            var todosLosPedidosPendientes = from pedido in _context.Pedido where pedido.Id == id select pedido;
            return Json(todosLosPedidosPendientes);
        }
        public JsonResult ObtenerTodosLosPedidos()
        {
            var todosLosPedidos = from objPedido in _context.Pedido join objPedidoEstado in _context.PedidoEstado on objPedido.PedidoEstadoId equals objPedidoEstado.Id select new { objPedido.Id, objPedido.DireccionDeSolicitante, objPedido.TipoDeUso, objPedido.EntregarA, objPedido.ActividadOperativa, objPedido.Motivo, objPedido.Fecha, objPedidoEstado.Descripcion };
            return Json(todosLosPedidos);
        }
        public JsonResult ObtenerItems(int id)
        {
            var itemsDelPedido = from objItem in _context.Item join objItemXPedido in _context.ItemXPedido on objItem.Id equals objItemXPedido.ItemId join objPedido in _context.Pedido on objItemXPedido.PedidoId equals objPedido.Id where objPedido.Id == id select new { ItemId = objItem.Id, objItem.Descripcion, objItemXPedido.Cantidad, objItemXPedido.Id, objItem.UnidadDeMedida };
            return Json(itemsDelPedido);
        }    
        public async void actualizarItemsDelPedido(List<Cantidad> cantidades)
        {
            foreach (Cantidad obj in cantidades)
            {
                var id = obj.id;
                var cantidad = obj.cantidad;
            }
            await _context.SaveChangesAsync();
        }
        public class ParametrosAprobarPendiente
        {
            public int id { get; set; }
            public List<Cantidad> cantidades { get; set; }
        }
        public class ParametrosDesaprobarPendiente{
            public int id { get; set; }
            public string observacion { get; set; }
            public List<Cantidad> cantidades { get; set; }
        }
        public class Cantidad
        {
            public string id { get; set; }
            public string cantidad { get; set; }
        }
        [HttpPost]
        public async Task<JsonResult> AprobarPedidoPendiente([FromBody] ParametrosAprobarPendiente obj)
        {
            int id = obj.id;
            List<Cantidad> cantidades = obj.cantidades;
            var pedidoQueQuiero = from pedido in _context.Pedido where pedido.Id == id select pedido;
            Pedido objPedido = new Pedido();
            objPedido = pedidoQueQuiero.Single();
            objPedido.PedidoEstadoId = 2;
            //actualizarItemsDelPedido(cantidades);
            try
            {
                _context.Update(objPedido);
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
            }
            /*
            foreach (Cantidad obj in objCantidadAuxiliar.cantidades)
            {
                string cantidadId = obj.id;
                string cantidadCantidad = obj.cantidad;
            }
            */
            //return Json(new { newUrl = Url.Action("Edit", "Cotizacion", new { id = c.CotizacionesId }) });
            return Json(new { newUrl = Url.Action("ListarPendientes", "Pedido") });
        }
        [HttpPost]
        public async Task<JsonResult> DesaprobarPedidoPendiente([FromBody] ParametrosDesaprobarPendiente obj)
        {
            int id = obj.id;
            string observacion = obj.observacion;
            List<Cantidad> cantidades = obj.cantidades;
            var pedidoQueQuiero = from pedido in _context.Pedido where pedido.Id == id select pedido;
            Pedido objPedido = new Pedido();
            objPedido = pedidoQueQuiero.Single();
            objPedido.PedidoEstadoId = 3;
            objPedido.Observaciones1 = observacion;
            //actualizarItemsDelPedido(cantidades);
            try
            {
                _context.Update(objPedido);
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
            }
            /*
            foreach (Cantidad obj in objCantidadAuxiliar.cantidades)
            {
                string cantidadId = obj.id;
                string cantidadCantidad = obj.cantidad;
            }
            */
            //return Json(new { newUrl = Url.Action("Edit", "Cotizacion", new { id = c.CotizacionesId }) });
            return Json(new { newUrl = Url.Action("ListarPendientes", "Pedido") });
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
                        todosLosPedidosPendientes = from pedido in _context.Pedido where pedido.Id >= codigo && pedido.PedidoEstadoId == 1  select pedido;
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
                        todosLosPedidosPendientes = from pedido in _context.Pedido where pedido.ActividadOperativa == valor && pedido.PedidoEstadoId == 1  select pedido;
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
    }
}
