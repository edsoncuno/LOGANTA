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
        /*
         * VIEW
         */
        public IActionResult ListarPorPedido(int pedidoId)
        {
            return View();
        }
        public IActionResult Editar(int id)
        {
            return View();
        }
        /*
         * GET
         */
        public JsonResult ObtenerTodasLasSolicitudesDeCotizacionConPedidoId(int id)
        {
            var resultadoDeBusqueda = from objSolicitudesDeCotizacion in _context.SolicitudDeCotizacion 
                                      join 
                                      objSolicitudesDeCotizacionEstado in _context.SolicitudDeCotizacionEstado 
                                      on 
                                      objSolicitudesDeCotizacion.SolicitudDeCotizacionEstadoId 
                                      equals 
                                      objSolicitudesDeCotizacionEstado.Id
                                      where objSolicitudesDeCotizacion.PedidoId == id
                                      select new {
                                          scId = objSolicitudesDeCotizacion.Id,
                                          scFecha = objSolicitudesDeCotizacion.Fecha,
                                          scProveedorId = objSolicitudesDeCotizacion.ProveedorId,
                                          scSolicitudDeCotizacionEstadoId = objSolicitudesDeCotizacion.SolicitudDeCotizacionEstadoId,
                                          scPedidoId = objSolicitudesDeCotizacion.PedidoId,
                                          scCuadroComparativoId = objSolicitudesDeCotizacion.CuadroComparativoId,
                                          sceDescripcion = objSolicitudesDeCotizacionEstado.Descripcion
                                      };
            return Json(resultadoDeBusqueda);
        }
        public JsonResult ObtenerSolicitudesDeCotizacionConSolicitudesDeCotizacionId(int id)
        {
            var resultadoDeBusqueda = from objSolicitudDeCotizacion in _context.SolicitudDeCotizacion
                                      where objSolicitudDeCotizacion.Id == id
                                      select objSolicitudDeCotizacion;
            return Json(resultadoDeBusqueda);
        }
        public JsonResult ObtenerProveedoresDeLaSolicitudDecoticacionConPedidoId(int id)
        {
            var resultadoDeBusqueda = from objProveedor in _context.Proveedor
                                      join objSolicitudDeCotizacion in _context.SolicitudDeCotizacion
                                      on objProveedor.Id equals objSolicitudDeCotizacion.ProveedorId
                                      join objPedido in _context.Pedido
                                      on objSolicitudDeCotizacion.PedidoId equals objPedido.Id
                                      where objSolicitudDeCotizacion.Id == id
                                      //&& objSolicitudDeCotizacion.SolicitudDeCotizacionEstadoId == 2
                                      select new
                                      {
                                          proveedorId = objProveedor.Id,
                                          proveedorNombre = objProveedor.Nombre
                                      };
            return Json(resultadoDeBusqueda);
        }
        public JsonResult ObtenerSolicitudesDeCotizacionRecividasConPedidoId(int id)
        {
            var resultadoDeBusqueda = from objSolicitudDeCotizacion in _context.SolicitudDeCotizacion
                                      where 
                                      objSolicitudDeCotizacion.PedidoId == id 
                                      &&
                                      objSolicitudDeCotizacion.SolicitudDeCotizacionEstadoId == 2
                                      select objSolicitudDeCotizacion;
            return Json(resultadoDeBusqueda);
        }
        /*
         * POST
         */
        // este metodo auque debe enviar correos al proveedor
        // por el mmento cambiara el estado del pedido a con solicitudes de cotizacion
        [HttpPost]
        public async Task<JsonResult> EnviarSolicitudDeCotizacion([FromBody] ParametrosEnviarSolicitudDeCotizacion parametro)
        {
            var pedidoQueQuiero = from pedido in _context.Pedido where pedido.Id == parametro.pedidoId select pedido;
            Pedido objPedido = new Pedido();
            objPedido = pedidoQueQuiero.Single();
            objPedido.PedidoEstadoId = 6;
            _context.Update(objPedido);
            foreach (ParametroRuc objRuc in parametro.rucs)
            {
                SolicitudDeCotizacion objSolicitudDeCotizacion = new SolicitudDeCotizacion();
                objSolicitudDeCotizacion.Fecha = DateTime.Now;
                var busquedaDeProveedor = from objProveedor in _context.Proveedor where objProveedor.Ruc == objRuc.ruc select objProveedor;
                Proveedor objProveedorQueEncontre = new Proveedor();
                objProveedorQueEncontre = busquedaDeProveedor.Single();
                objSolicitudDeCotizacion.ProveedorId = objProveedorQueEncontre.Id;
                objSolicitudDeCotizacion.SolicitudDeCotizacionEstadoId = 1;
                objSolicitudDeCotizacion.PedidoId = parametro.pedidoId;
                _context.Add(objSolicitudDeCotizacion);
            }
            await _context.SaveChangesAsync();
            return Json(new { 
                newUrl = Url.Action("ListarAprobadosPorLogistica", "Pedido"), 
                mensaje = "Se enviaron las solicitudes de cotización a los proveedores",
                estado = 0
            });
        }
        public async Task<JsonResult> CambiarEstadoRecivido([FromBody] ParametroCambiarEstadoRecivido parametro)
        {
            // obteniendo el objeto solicitud de cotizacion completo
            var resultadoDeBuscarUnaSolicitudDeCotizacion = from objSolicitudDeCotizacion 
                                                            in _context.SolicitudDeCotizacion 
                                                            where objSolicitudDeCotizacion.Id == parametro.solicitudDeCotizacionId
                                                            select objSolicitudDeCotizacion;
            SolicitudDeCotizacion objSolicitudDeCotizacionEncontrado = new SolicitudDeCotizacion();
            objSolicitudDeCotizacionEncontrado = resultadoDeBuscarUnaSolicitudDeCotizacion.Single();
            // buscandoy  actualizando el pedido relacionado con la cotizacion
            // que llego como parametro
            var resultadoDeBuscarUnPedido = from objPedido
                                            in _context.Pedido
                                            where objPedido.Id == objSolicitudDeCotizacionEncontrado.PedidoId
                                            select objPedido;
            Pedido objPedidoEncontrado = new Pedido();
            objPedidoEncontrado = resultadoDeBuscarUnPedido.Single();
            objPedidoEncontrado.PedidoEstadoId = 7;
            _context.Update(objPedidoEncontrado);
            // buscando y actualizando todas las cotizaciones relacionadas con el pedido  de la cotizacion
            // que llego como parametro
            var resultadoDeBuscarTodasLasSoliciudesDeCotizacionConElPedidoId = from objSolicitudDeCotizacion
                                                                           in _context.SolicitudDeCotizacion
                                                                           where objSolicitudDeCotizacion.PedidoId == objSolicitudDeCotizacionEncontrado.PedidoId
                                                                           select objSolicitudDeCotizacion;
            List<SolicitudDeCotizacion> listSolicitudDeCotizacionEncontrados = resultadoDeBuscarTodasLasSoliciudesDeCotizacionConElPedidoId.ToList();
            foreach (SolicitudDeCotizacion solicitudDeCotizacion in listSolicitudDeCotizacionEncontrados)
            {
                solicitudDeCotizacion.SolicitudDeCotizacionEstadoId = 2;
                _context.Update(solicitudDeCotizacion);
            }
            await _context.SaveChangesAsync();
            return Json(new
            {
                newUrl = Url.Action("ListarConSolicitudesDeCotizacion", "Pedido"),
                mensaje = "Se ha actualizado la solicitud de cotizacion",
                estado = 0
            });
        }
    }
}