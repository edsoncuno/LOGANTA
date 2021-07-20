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
        public IActionResult Listar()
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
        public IActionResult ListarConSolicitudesDeCotizacion()
        {
            return View();
        }
        public IActionResult ListarConSolicitudesDeCotizacionCompletadas()
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
        public JsonResult ObtenerTodosLosPedidosConSolicitudesDeCotizacionEnviadas()
        {
            var todosLosPedidosConSolicitudesDeCotizacionEnviadas = from pedido in _context.Pedido where pedido.PedidoEstadoId == 6 select pedido;
            return Json(todosLosPedidosConSolicitudesDeCotizacionEnviadas);
        }
        public JsonResult ObtenerTodosLosPedidosConSolicitudesDeCotizacionCompletas()
        {
            var todosLosPedidosConSolicitudesDeCotizacionEnviadas = from pedido in _context.Pedido where pedido.PedidoEstadoId == 7 select pedido;
            return Json(todosLosPedidosConSolicitudesDeCotizacionEnviadas);
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
            _context.Update(objPedido);
            actualizarItemsDelPedido(obj.items);
            await _context.SaveChangesAsync();
            //return Json(new { newUrl = Url.Action("Edit", "Cotizacion", new { id = c.CotizacionesId }) });
            return Json(new { newUrl = Url.Action("ListarPendientes", "Pedido"), mensaje = "El pedido ha sido aprobado por el jefe del área usuario", estado = 0 });
        }
        [HttpPost]
        public async Task<JsonResult> DesaprobarPedidoPendiente([FromBody] ParametrosDesaprobarPedido obj)
        {
            var pedidoQueQuiero = from pedido in _context.Pedido where pedido.Id == obj.pedidoId select pedido;
            Pedido objPedido = new Pedido();
            objPedido = pedidoQueQuiero.Single();
            objPedido.Observaciones1 = obj.observaciones;
            objPedido.PedidoEstadoId = 3;
            _context.Update(objPedido);
            actualizarItemsDelPedido(obj.items);
            await _context.SaveChangesAsync();
            return Json(new { newUrl = Url.Action("ListarPendientes", "Pedido") , mensaje = "El pedido ha sido desaprobado por el jefe del área usuario", estado = 0 });
        }
        [HttpPost]
        public async Task<JsonResult> AprobarPedidoAprobadoPorElSolicitante([FromBody] ParametrosAprobarPedido obj)
        {
            var pedidoQueQuiero = from pedido in _context.Pedido where pedido.Id == obj.pedidoId select pedido;
            Pedido objPedido = new Pedido();
            objPedido = pedidoQueQuiero.Single();
            objPedido.PedidoEstadoId = 4;
            _context.Update(objPedido);
            actualizarItemsDelPedido(obj.items);
            await _context.SaveChangesAsync();
            return Json(new { newUrl = Url.Action("ListarAprobadosPorElSolicitante", "Pedido"), mensaje = "El pedido ha sido aprobado por logística", estado = 0 });
        }
        [HttpPost]
        public async Task<JsonResult> DesaprobarPedidoAprobadoPorElSolicitante([FromBody] ParametrosDesaprobarPedido obj)
        {
            var pedidoQueQuiero = from pedido in _context.Pedido where pedido.Id == obj.pedidoId select pedido;
            Pedido objPedido = new Pedido();
            objPedido = pedidoQueQuiero.Single();
            objPedido.PedidoEstadoId = 5;
            _context.Update(objPedido);
            actualizarItemsDelPedido(obj.items);
            await _context.SaveChangesAsync();
            return Json(new { newUrl = Url.Action("ListarAprobadosPorElSolicitante", "Pedido"), mensaje = "El pedido ha sido desaprobado por logistica", estado = 0 });
        }
        /*
         * Auxiliar
         */
        public void actualizarItemsDelPedido(List<ParametroItemPedido> itemsDelPedido)
        {
            foreach (ParametroItemPedido item in itemsDelPedido)
            {
                var objItemXPedidoQueEncontre = from objItemXPedido in _context.ItemXPedido where objItemXPedido.Id == item.ipId select objItemXPedido;
                ItemXPedido objItemXPedidoEncontrado = new ItemXPedido();
                objItemXPedidoEncontrado = objItemXPedidoQueEncontre.Single();
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
        /*
         *
         *
         *
         *
         *
         *
         *
         *
         *
         *
         *
         *
         */
        //LEO
        public ActionResult Nuevo()
        {
            ViewData["AreaUsuariaId"] = new SelectList(_context.AreaUsuaria, "Id", "Name");
            ViewData["ProyectoId"] = new SelectList(_context.Proyectos, "Id", "Name");
            return View();
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Nuevo(Pedido pedido)
        {
            if (ModelState.IsValid)
            {
                _context.Add(pedido);
                await _context.SaveChangesAsync();
                return Redirect("https://localhost:44348/Pedido/AgregarItem/" + pedido.Id);
            }
            ViewData["AreaUsuariaId"] = new SelectList(_context.AreaUsuaria, "Id", "Name", pedido.AreaUsuariaId);
            ViewData["ProyectoId"] = new SelectList(_context.Proyectos, "Id", "Name", pedido.ProyectoId);
            return View(pedido);
        }
        public ActionResult AgregarItem(int? id)
        {
            ViewData["ItemId"] = new SelectList(_context.Item, "Id", "Descripcion");
            ViewData["PedidoId"] = id;
            return View();
        }
        [HttpPost]
        [ValidateAntiForgeryToken]

        public async Task<IActionResult> AgregarItem([Bind("Cantidad,ItemId,PedidoId")] ItemXPedido itemXPedido)
        {
            if (ModelState.IsValid)
            {
                _context.Add(itemXPedido);
                await _context.SaveChangesAsync();
                return Redirect("https://localhost:44348/Pedido/ListaItem/" + itemXPedido.PedidoId);
            }
            ViewData["ItemId"] = new SelectList(_context.Item, "Id", "Descripcion", itemXPedido.ItemId);
            return View(itemXPedido);
        }
        public async Task<IActionResult> ListaItem(int? id)
        {
            var applicationDbContext = _context.ItemXPedido.Include(i => i.Item).Include(i => i.Pedido).Where(m => m.PedidoId == id);
            ViewData["PedidoId"] = id;
            return View(await applicationDbContext.ToListAsync());
        }
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var itemXPedido = await _context.ItemXPedido.FindAsync(id);
            if (itemXPedido == null)
            {
                return NotFound();
            }
            ViewData["ItemId"] = new SelectList(_context.Item, "Id", "Id", itemXPedido.ItemId);
            ViewData["PedidoId"] = new SelectList(_context.Pedido, "Id", "Id", itemXPedido.PedidoId);
            return View(itemXPedido);
        }

        // POST: ItemXPedidoes/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("Id,Cantidad,ItemId,PedidoId")] ItemXPedido itemXPedido)
        {
            if (id != itemXPedido.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(itemXPedido);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!ItemXPedidoExists(itemXPedido.Id))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return Redirect("https://localhost:44348/Pedido/ListaItem/" + itemXPedido.PedidoId);
            }
            ViewData["ItemId"] = new SelectList(_context.Item, "Id", "Id", itemXPedido.ItemId);
            ViewData["PedidoId"] = new SelectList(_context.Pedido, "Id", "Id", itemXPedido.PedidoId);
            return View(itemXPedido);
        }
        private bool ItemXPedidoExists(int id)
        {
            return _context.ItemXPedido.Any(e => e.Id == id);
        }
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var itemXPedido = await _context.ItemXPedido
                .Include(i => i.Item)
                .Include(i => i.Pedido)
                .FirstOrDefaultAsync(m => m.Id == id);
            if (itemXPedido == null)
            {
                return NotFound();
            }

            return View(itemXPedido);
        }
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var itemXPedido = await _context.ItemXPedido.FindAsync(id);
            _context.ItemXPedido.Remove(itemXPedido);
            await _context.SaveChangesAsync();
            return Redirect("https://localhost:44348/Pedido/ListaItem/" + itemXPedido.PedidoId);
        }
        public async Task<IActionResult> ListaPedido()
        {
            var applicationDbContext = _context.Pedido.Include(p => p.AreaUsuaria).Include(p => p.PedidoEstado).Include(p => p.Proyecto);
            return View(await applicationDbContext.ToListAsync());
        }
    }
}
