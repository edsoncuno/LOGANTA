using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;

using Microsoft.EntityFrameworkCore;
using Application.Models;
using Microsoft.AspNetCore.Http;
using System.IO;

namespace Application.Controllers
{
    public class DocumentoController : Controller
    {
        private readonly ApplicationDbContext _context;

        public DocumentoController(ApplicationDbContext context)
        {
            _context = context;
        }
        public IActionResult Enviar()
        {
            return View();
        }
        [HttpPost]
        public async Task<IActionResult> Enviar([FromForm] List<IFormFile> archivos, string observaciones, int pedidoId)
        {
            List<Documento> documentos = new List<Documento>();
            string rutaParaDocumento = "C:\\Users\\Edson Cuno\\Downloads\\LOGANTA\\Application\\wwwroot\\documento\\";
            if (archivos.Count >0)
            {
                foreach (IFormFile archivo in archivos) {
                    string rutaCompleta = Path.Combine(rutaParaDocumento,archivo.FileName);
                    FileStream fileStream;
                    using (fileStream = new FileStream(Path.Combine(rutaParaDocumento,Path.GetFileName(archivo.FileName)), FileMode.Create))
                    {
                        archivo.CopyTo(fileStream);
                    }
                    Documento objDocumento = new Documento();
                    objDocumento.Observaciones = observaciones;
                    objDocumento.Fecha = DateTime.Now;
                    objDocumento.Ruta = rutaCompleta;
                    objDocumento.PedidoId = pedidoId;
                    documentos.Add(objDocumento);
                }
                foreach (var documento in documentos)
                {
                    _context.Add(documento);
                }
                await _context.SaveChangesAsync();
            }
            return RedirectToAction(nameof(Index));
        }
        // GET: Documento
        public async Task<IActionResult> Index()
        {
            var applicationDbContext = _context.Documento.Include(d => d.Pedido);
            return View(await applicationDbContext.ToListAsync());
        }

        // GET: Documento/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var documento = await _context.Documento
                .Include(d => d.Pedido)
                .FirstOrDefaultAsync(m => m.Id == id);
            if (documento == null)
            {
                return NotFound();
            }

            return View(documento);
        }

        // GET: Documento/Create
        public IActionResult Create()
        {
            ViewData["PedidoId"] = new SelectList(_context.Pedido, "Id", "Id");
            return View();
        }

        // POST: Documento/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("Id,Fecha,Ruta,Observaciones,PedidoId")] Documento documento)
        {
            if (ModelState.IsValid)
            {
                _context.Add(documento);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            ViewData["PedidoId"] = new SelectList(_context.Pedido, "Id", "Id", documento.PedidoId);
            return View(documento);
        }

        // GET: Documento/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var documento = await _context.Documento.FindAsync(id);
            if (documento == null)
            {
                return NotFound();
            }
            ViewData["PedidoId"] = new SelectList(_context.Pedido, "Id", "Id", documento.PedidoId);
            return View(documento);
        }

        // POST: Documento/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("Id,Fecha,Ruta,Observaciones,PedidoId")] Documento documento)
        {
            if (id != documento.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(documento);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!DocumentoExists(documento.Id))
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
            ViewData["PedidoId"] = new SelectList(_context.Pedido, "Id", "Id", documento.PedidoId);
            return View(documento);
        }

        // GET: Documento/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var documento = await _context.Documento
                .Include(d => d.Pedido)
                .FirstOrDefaultAsync(m => m.Id == id);
            if (documento == null)
            {
                return NotFound();
            }

            return View(documento);
        }

        // POST: Documento/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var documento = await _context.Documento.FindAsync(id);
            _context.Documento.Remove(documento);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool DocumentoExists(int id)
        {
            return _context.Documento.Any(e => e.Id == id);
        }
    }
}
