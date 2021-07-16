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
    public class SolicitudDeCotizacionController : Controller
    {
        private readonly ApplicationDbContext _context;

        public SolicitudDeCotizacionController(ApplicationDbContext context)
        {
            _context = context;
        }
        [HttpPost]
        public JsonResult EnviarSolicitudDeCotizacion([FromBody] ParametrosEnviarSolicitudDeCotizacion parametro)
        {
            int pedidoId = parametro.pedidoId;
            List<ParametroRuc> listaDeRucs = parametro.rucs;
            foreach (ParametroRuc objetoRuc in listaDeRucs)
            {
                long numeroDeRuc = objetoRuc.ruc;
            }
            return Json(new { 
                newUrl = Url.Action("ListarAprobadosPorLogistica", "Pedido"), 
                mensaje = "Se enviaron las solicitudes a los proveedores." 
            });
        }
    }
}
