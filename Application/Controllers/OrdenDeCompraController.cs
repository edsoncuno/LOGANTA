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
    public class OrdenDeCompraController : Controller
    {
        private readonly ApplicationDbContext _context;

        public OrdenDeCompraController(ApplicationDbContext context)
        {
            _context = context;
        }
        /*
         * VIEW
         */
        public IActionResult Crear(int id)
        {
            return View();
        }
        /*
         * GET
         */
        /*
         * POST
         */
    }
}