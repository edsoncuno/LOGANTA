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
    public class CuadroComparativoController : Controller
    {
        private readonly ApplicationDbContext _context;

        public CuadroComparativoController(ApplicationDbContext context)
        {
            _context = context;
        }
        /*
         * VIEW
         */
        public IActionResult Crear(int pedidoId)
        {
            return View();
        }
        public IActionResult Listar()
        {
            return View();
        }
        /*
         * GET
         */
        public JsonResult ObtenerTodosLosItems()
        {
            var todosLosItems = from objItem in _context.Item select objItem;
            return Json(todosLosItems);
        }
        public JsonResult ObtenerProveedorPorItemId(int id)
        {
            var proveedores = from objItem in _context.Item join objItemXProveedor in _context.ItemXProveedor on objItem.Id equals objItemXProveedor.ItemId join objProveedor in _context.Proveedor on objItemXProveedor.ProveedorId equals objProveedor.Id where objItem.Id == id select new { id = objProveedor.Id, nombre = objProveedor.Nombre};
            return Json(proveedores);
        }
        public class CandidatoAGanador
        {
            public int ItemId { get; set; }
            public string ItemNombre { get; set; }
            public int ProveedorId { get; set; }
            public string ProveedorNombre { get; set; }
        }
        public class CandidatosPorItem
        {
            public int ItemId { get; set; }
            public List<CandidatoPorItem> candidatos { get; set; }
        }
        public class CandidatoPorItem
        {
            public int ProveedorId { get; set; }
            public decimal Precio { get; set; }
            public bool EsGanador { get; set; }
        }
        private List<CandidatosPorItem> agregarAListaDeCandidatosPorItem(CandidatoAGanador candidatoAGanador, List<CandidatosPorItem> listaDeCandidatosPorItem)
        {
            if (existeItemIdEnListaDeCandidatosPorItem(candidatoAGanador.ItemId, listaDeCandidatosPorItem))
            {
                int indexListaDeCandidatosPorItem = obtenerIndexDeItem(candidatoAGanador.ItemId, listaDeCandidatosPorItem);
                CandidatoPorItem objCandidatoPorItem = new CandidatoPorItem();
                objCandidatoPorItem.ProveedorId = candidatoAGanador.ProveedorId;
                listaDeCandidatosPorItem[indexListaDeCandidatosPorItem].candidatos.Add(objCandidatoPorItem);
            }
            else
            {
                // Crear un nuevo item
                CandidatosPorItem objCandidatosPorItem = new CandidatosPorItem();
                objCandidatosPorItem.ItemId = candidatoAGanador.ItemId;
                objCandidatosPorItem.candidatos = new List<CandidatoPorItem>();
                // Crear un nuevo candidato
                CandidatoPorItem objCandidatoPorItem = new CandidatoPorItem();
                objCandidatoPorItem.ProveedorId = candidatoAGanador.ProveedorId;
                // Agregar candidato a item
                objCandidatosPorItem.candidatos.Add(objCandidatoPorItem);
                // Agregar item a lista de candidatos de items
                listaDeCandidatosPorItem.Add(objCandidatosPorItem);
            }
            return listaDeCandidatosPorItem;
        }
        private int obtenerIndexDeItem(int itemId, List<CandidatosPorItem> objListaDeCandidatosPorItem)
        {
            for (int i=0; i< objListaDeCandidatosPorItem.Count ; i++)
            {
                if (objListaDeCandidatosPorItem[i].ItemId == itemId)
                {
                    return i;
                }
            }
            return 0;
        }
        private bool existeItemIdEnListaDeCandidatosPorItem(int itemId, List<CandidatosPorItem> objListaDeCandidatosPorItem)
        {
            foreach (CandidatosPorItem objCandidatosPorItem in objListaDeCandidatosPorItem)
            {
                if (itemId == objCandidatosPorItem.ItemId)
                {
                    return true;
                }
            }
            return false;
        }
        private List<CandidatoPorItem> actualizarCandidatosPorItem(CandidatosPorItem objCandidatosPorItem)
        {
            foreach (CandidatoPorItem objCandidatoPorItem in objCandidatosPorItem.candidatos)
            {
                var objItemXProveedorQueBusco = from objItemXProveedor in _context.ItemXProveedor where objItemXProveedor.ItemId == objCandidatosPorItem.ItemId && objItemXProveedor.ProveedorId == objCandidatoPorItem.ProveedorId select objItemXProveedor;
                ItemXProveedor tempItemXProveedor = new ItemXProveedor();
                tempItemXProveedor = objItemXProveedorQueBusco.Single();
                objCandidatoPorItem.Precio = Convert.ToDecimal(tempItemXProveedor.Precio);
            }
            return objCandidatosPorItem.candidatos;
        }
        private List<CandidatoPorItem> elegirCandidatoGanadorPorItem(List<CandidatoPorItem> objCandidatosPorItem)
        {
            bool esElPrimerCandidato = true;
            int indexGanador = 0;
            decimal precioGanador = 0;
            for (int i=0; i<objCandidatosPorItem.Count;i++)
            {
                if (esElPrimerCandidato)
                {
                    precioGanador = objCandidatosPorItem[i].Precio;
                    indexGanador = i;
                    esElPrimerCandidato = false;
                }
                else
                {
                    if (objCandidatosPorItem[i].Precio < precioGanador)
                    {
                        precioGanador = objCandidatosPorItem[i].Precio;
                        indexGanador = i;
                    }
                }
            }
            objCandidatosPorItem[indexGanador].EsGanador = true;
            return objCandidatosPorItem;
        }
        public class GanadorPorItem
        {
            public int ProveedorId { get; set; }
            public string ProveedorNombre { get; set; }
            public int ItemId { get; set; }
            public string ItemDescripcion { get; set; }
            public decimal ItemPrecio { get; set; }
        }
        private List<GanadorPorItem> convertirListaDeCandidatosPorItemAListaDeGanadores(List<CandidatosPorItem> listaDeCandidatosPorItem)
        {
            List<GanadorPorItem> listaDeGanadorPorItem = new List<GanadorPorItem>();
            foreach (CandidatosPorItem objCandidatosPorItem in listaDeCandidatosPorItem)
            {
                GanadorPorItem objGanadorPorItem = new GanadorPorItem();
                objGanadorPorItem.ItemId = objCandidatosPorItem.ItemId;
                var objItemQueBusco = from objItem in _context.Item where objItem.Id == objGanadorPorItem.ItemId select objItem;
                objGanadorPorItem.ItemDescripcion = objItemQueBusco.Single().Descripcion;
                foreach (CandidatoPorItem objCandidatoPorItem in objCandidatosPorItem.candidatos)
                {
                    if (objCandidatoPorItem.EsGanador)
                    {
                        objGanadorPorItem.ProveedorId = objCandidatoPorItem.ProveedorId;
                        objGanadorPorItem.ItemPrecio = objCandidatoPorItem.Precio;
                        var objProveedorQueBusco = from objProveedor in _context.Proveedor where objProveedor.Id == objGanadorPorItem.ProveedorId select objProveedor;
                        objGanadorPorItem.ProveedorNombre = objProveedorQueBusco.Single().Nombre;
                    }
                }
                listaDeGanadorPorItem.Add(objGanadorPorItem);
            }
            return listaDeGanadorPorItem;
        }
        /*
         * POST
         */
        [HttpPost]
        public JsonResult ObtenerGanador([FromBody] List<CandidatoAGanador> candidatosAGanador)
        {
            List<CandidatosPorItem> listaDeCandidatosPorItem = new List<CandidatosPorItem>();
            foreach (CandidatoAGanador candidatoAGanador in candidatosAGanador)
            {
                listaDeCandidatosPorItem = agregarAListaDeCandidatosPorItem(candidatoAGanador, listaDeCandidatosPorItem);
            }
            foreach (CandidatosPorItem objCandidatosPorItem in listaDeCandidatosPorItem)
            {
                objCandidatosPorItem.candidatos = actualizarCandidatosPorItem(objCandidatosPorItem);
            }
            foreach (CandidatosPorItem objCandidatosPorItem in listaDeCandidatosPorItem)
            {
                objCandidatosPorItem.candidatos = elegirCandidatoGanadorPorItem(objCandidatosPorItem.candidatos);
            }
            return Json(convertirListaDeCandidatosPorItemAListaDeGanadores(listaDeCandidatosPorItem));
        }
        [HttpPost]
        public async Task<JsonResult> GuardarGanador([FromBody] List<GanadorPorItem> objs)
        {
            /*
            Pedido objPedido = new Pedido();
            objPedido.Fecha = DateTime.Now;
            objPedido.PedidoEstadoId = 6;
            _context.Add(objPedido);
            CuadroComparativo objCuadroComparativo = new CuadroComparativo();
            objCuadroComparativo.Fecha = DateTime.Now;
            objCuadroComparativo.PedidoId = objPedido.Id;
            _context.Add(objCuadroComparativo);
            foreach (GanadorPorItem objGanadorPorItem in objs)
            {
                ItemXPedido objItemXPedido = new ItemXPedido();
                objItemXPedido.Cantidad = 0;
                objItemXPedido.ItemId = objGanadorPorItem.ItemId;
                objItemXPedido.PedidoId = objPedido.Id;
                objItemXPedido.ProveedorGanadorId = objGanadorPorItem.ProveedorId;
                _context.Add(objItemXPedido);
            }
            */
            await _context.SaveChangesAsync();
            return Json(new { newUrl = Url.Action("Realizar", "CuadroComparativo") });
        }
    }
}
