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
    public class ProveedorController : Controller
    {
        private readonly ApplicationDbContext _context;

        public ProveedorController(ApplicationDbContext context)
        {
            _context = context;
        }
        /*
         * GET
         */
        public JsonResult ObtenerTodosLosProveedores()
        {
            var todosLosProveedores = from proveedor in _context.Proveedor select proveedor;
            return Json(todosLosProveedores);
        }
    }
}
