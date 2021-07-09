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
        public IActionResult Enviar(int id)
        {
            return View();
        }
        [HttpPost]
        public async Task<IActionResult> Enviar([FromForm] List<IFormFile> archivos, string observaciones, int pedidoId)
        {
            List<Documento> documentos = new List<Documento>();
            string rutaParaDocumento = "..\\Application\\wwwroot\\documento\\";
            foreach (IFormFile archivo in archivos)
            {
                string rutaCompleta = Path.Combine(rutaParaDocumento, archivo.FileName);
                FileStream fileStream;
                using (fileStream = new FileStream(Path.Combine(rutaParaDocumento, Path.GetFileName(archivo.FileName)), FileMode.Create))
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
            //return Ok();
            return View("~/Views/Pedido/Index.cshtml");
        }
        public IActionResult Index()
        {
            return View();
        }
        public JsonResult ObtenerTodosLosDocumentos()
        {
            var todosLosDosumentos = from objDocumento in _context.Documento select objDocumento;
            return Json(todosLosDosumentos);
        }
    }
}
