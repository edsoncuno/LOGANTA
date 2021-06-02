using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using Application.Models;

namespace Application.Controllers
{
    public class PedidoController : Controller
    {
        private readonly ApplicationDbContext _context;

        public PedidoController(ApplicationDbContext context)
        {
            _context = context;
        }
        public async Task<IActionResult> ListarPendientes()
        {
            var todosLosPedidosPendientes = from pedido in _context.Pedido where pedido.PedidoEstadoId == 1 select pedido;
            return View(await todosLosPedidosPendientes.ToListAsync());
        }
        [HttpPost]
        public async Task<IActionResult> ListarPendientes(string filtro, string valor)
        {
            var listaDePedidosPendientes = from pedido in _context.Pedido where pedido.PedidoEstadoId == 1 select pedido;
            if (filtro == null)
            {
                return View(await listaDePedidosPendientes.ToListAsync());
            }
            else
            {
                if (filtro == "CÓDIGO")
                {
                    try
                    {
                        int codigo = Convert.ToInt32(valor);
                        listaDePedidosPendientes = from pedido in _context.Pedido where pedido.PedidoEstadoId == 1 && pedido.Id >= codigo select pedido;
                        return View(await listaDePedidosPendientes.ToListAsync());
                    }
                    catch
                    {
                        return View(await listaDePedidosPendientes.ToListAsync());
                    }
                }
                else { 
                    if(filtro == "ACTIVIDAD OPERATIVA")
                    {
                        listaDePedidosPendientes = from pedido in _context.Pedido where pedido.PedidoEstadoId == 1 && pedido.ActividadOperativa == valor select pedido;
                        return View(await listaDePedidosPendientes.ToListAsync());
                    }
                    else
                    {
                        if(filtro == "TIPO DE USO")
                        {
                            listaDePedidosPendientes = from pedido in _context.Pedido where pedido.PedidoEstadoId == 1 && pedido.TipoDeUso == valor select pedido;
                            return View(await listaDePedidosPendientes.ToListAsync());
                        }
                        else
                        {
                            try
                            {
                                DateTime fecha = Convert.ToDateTime(valor);
                                listaDePedidosPendientes = from pedido in _context.Pedido where pedido.PedidoEstadoId == 1 && pedido.Fecha >= fecha select pedido;
                                return View(await listaDePedidosPendientes.ToListAsync());
                            }
                            catch
                            {
                                return View(await listaDePedidosPendientes.ToListAsync());
                            }
                        }
                    }
                }
            }
        }
        public async Task<IActionResult> MostrarPendiente(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var pedido = await _context.Pedido
                .Include(p => p.PedidoEstado)
                .FirstOrDefaultAsync(m => m.Id == id);
            if (pedido == null)
            {
                return NotFound();
            }

            return View(pedido);
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> AprobarPedidoSolicitante(int id)
        {
            var pedidoQueQuiero = from pedido in _context.Pedido where pedido.Id == id select pedido;
            Pedido objPedido = new Pedido();
            objPedido = pedidoQueQuiero.Single();
            objPedido.PedidoEstadoId = 2;
            try
            {
                _context.Update(objPedido);
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!PedidoExists(objPedido.Id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }
            return RedirectToAction(nameof(ListarPendientes));
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DesaprobarPedidoSolicitante(int id, string observaciones1)
        {
            var pedidoQueQuiero = from pedido in _context.Pedido where pedido.Id == id select pedido;
            Pedido objPedido = new Pedido();
            objPedido = pedidoQueQuiero.Single();
            objPedido.PedidoEstadoId = 3;
            objPedido.Observaciones1 = observaciones1;
            try
            {
                _context.Update(objPedido);
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!PedidoExists(objPedido.Id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }
            return RedirectToAction(nameof(ListarPendientes));
        }
        public JsonResult ObtenerItems(int id)
        {
            var itemsDelPedido = from objItem in _context.Item join objItemXPedido in _context.ItemXPedido on objItem.Id equals objItemXPedido.ItemId join objPedido in _context.Pedido on objItemXPedido.PedidoId equals objPedido.Id where objPedido.Id == id select new { objItem.Id, objItem.Descripcion, objItemXPedido.Cantidad, objItem.UnidadDeMedida };
            return Json(itemsDelPedido);
        }
        public JsonResult ObtenerPedidos(string filtro, string valor)
        {
            var listaDePedidos = from pedido in _context.Pedido select pedido;
            if (filtro == null)
            {
                return Json(listaDePedidos);
            }
            else
            {
                if (filtro == "Código")
                {
                    try
                    {
                        int codigo = Convert.ToInt32(valor);
                        listaDePedidos = from pedido in _context.Pedido where pedido.Id >= codigo select pedido;
                        return Json(listaDePedidos);
                    }
                    catch
                    {
                        return Json(listaDePedidos);
                    }
                }
                else
                {
                    if (filtro == "ActividadOperativa")
                    {
                        listaDePedidos = from pedido in _context.Pedido where pedido.ActividadOperativa == valor select pedido;
                        return Json(listaDePedidos);
                    }
                    else
                    {
                        if (filtro == "TIPO DE USO")
                        {
                            listaDePedidos = from pedido in _context.Pedido where pedido.TipoDeUso == valor select pedido;
                            return Json(listaDePedidos);
                        }
                        else
                        {
                            try
                            {
                                DateTime fecha = Convert.ToDateTime(valor);
                                listaDePedidos = from pedido in _context.Pedido where pedido.Fecha >= fecha select pedido;
                                return Json(listaDePedidos);
                            }
                            catch
                            {
                                return Json(listaDePedidos);
                            }
                        }
                    }
                }
            }
        }
        // GET: Pedido
        public async Task<IActionResult> Index()
        {
            var applicationDbContext = _context.Pedido.Include(p => p.PedidoEstado);
            return View(await applicationDbContext.ToListAsync());
        }

        // GET: Pedido/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var pedido = await _context.Pedido
                .Include(p => p.PedidoEstado)
                .FirstOrDefaultAsync(m => m.Id == id);
            if (pedido == null)
            {
                return NotFound();
            }

            return View(pedido);
        }

        // GET: Pedido/Create
        public IActionResult Create()
        {
            ViewData["PedidoEstadoId"] = new SelectList(_context.PedidoEstado, "Id", "Id");
            return View();
        }

        // POST: Pedido/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("Id,DireccionDeSolicitante,TipoDeUso,EntregarA,ActividadOperativa,Motivo,Fecha,Observaciones1,Observaciones2,PedidoEstadoId")] Pedido pedido)
        {
            if (ModelState.IsValid)
            {
                _context.Add(pedido);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            ViewData["PedidoEstadoId"] = new SelectList(_context.PedidoEstado, "Id", "Id", pedido.PedidoEstadoId);
            return View(pedido);
        }

        // GET: Pedido/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var pedido = await _context.Pedido.FindAsync(id);
            if (pedido == null)
            {
                return NotFound();
            }
            ViewData["PedidoEstadoId"] = new SelectList(_context.PedidoEstado, "Id", "Id", pedido.PedidoEstadoId);
            return View(pedido);
        }

        // POST: Pedido/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("Id,DireccionDeSolicitante,TipoDeUso,EntregarA,ActividadOperativa,Motivo,Fecha,Observaciones1,Observaciones2,PedidoEstadoId")] Pedido pedido)
        {
            if (id != pedido.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(pedido);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!PedidoExists(pedido.Id))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Index));
            }
            ViewData["PedidoEstadoId"] = new SelectList(_context.PedidoEstado, "Id", "Id", pedido.PedidoEstadoId);
            return View(pedido);
        }

        // GET: Pedido/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var pedido = await _context.Pedido
                .Include(p => p.PedidoEstado)
                .FirstOrDefaultAsync(m => m.Id == id);
            if (pedido == null)
            {
                return NotFound();
            }

            return View(pedido);
        }

        // POST: Pedido/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var pedido = await _context.Pedido.FindAsync(id);
            _context.Pedido.Remove(pedido);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool PedidoExists(int id)
        {
            return _context.Pedido.Any(e => e.Id == id);
        }
    }
}
