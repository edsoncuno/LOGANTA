using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using Application.Models;

namespace Application.Models
{
    public class ApplicationDbContext : DbContext
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options) : base(options) { 
        }
        public DbSet<Item> Item { get; set; }
        public DbSet<ItemXPedido> ItemXPedido { get; set; }
        public DbSet<ItemXPedidoXSolicitudDeCotizacion> ItemXPedidoXSolicitudDeCotizacion { get; set; }
        public DbSet<ItemXProveedor> ItemXProveedor { get; set; }
        public DbSet<Pedido> Pedido { get; set; }
        public DbSet<PedidoEstado> PedidoEstado { get; set; }
        public DbSet<PedidoXSolicitudDeCotizacion> PedidoXSolicitudDeCotizacion { get; set; }
        public DbSet<Proveedor> Proveedor { get; set; }
        public DbSet<SolicitudDeCotizacion> SolicitudDeCotizacion { get; set; }
        public DbSet<SolicitudDeCotizacionEstado> SolicitudDeCotizacionEstado { get; set; }
        public DbSet<Documento> Documento { get; set; }
        public DbSet<Application.Models.CuadroComparativo> CuadroComparativo { get; set; }
    }
}
