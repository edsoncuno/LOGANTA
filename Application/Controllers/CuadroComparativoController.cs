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
        public IActionResult Realizar()
        {
            return View();
        }
        public IActionResult Index()
        {
            return View();
        }
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
    }
}
