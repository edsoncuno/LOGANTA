using System;
using Microsoft.EntityFrameworkCore.Migrations;

namespace Application.Migrations
{
    public partial class InitialCreate : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Item",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Descripcion = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    Marca = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    UnidadDeMedida = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    ProveedorPredeterminado = table.Column<int>(type: "int", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Item", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "PedidoEstado",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Descripcion = table.Column<string>(type: "nvarchar(max)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_PedidoEstado", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "Proveedor",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Ruc = table.Column<long>(type: "bigint", nullable: true),
                    Nombre = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    Direccion = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    RazonSocial = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    Telefono = table.Column<int>(type: "int", nullable: true),
                    Correo = table.Column<string>(type: "nvarchar(max)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Proveedor", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "SolicitudDeCotizacionEstado",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Descripcion = table.Column<string>(type: "nvarchar(max)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_SolicitudDeCotizacionEstado", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "Pedido",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    DireccionDeSolicitante = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    TipoDeUso = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    EntregarA = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    ActividadOperativa = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    Motivo = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    Fecha = table.Column<DateTime>(type: "datetime2", nullable: true),
                    Observaciones1 = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    Observaciones2 = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    PedidoEstadoId = table.Column<int>(type: "int", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Pedido", x => x.Id);
                    table.ForeignKey(
                        name: "FK_Pedido_PedidoEstado_PedidoEstadoId",
                        column: x => x.PedidoEstadoId,
                        principalTable: "PedidoEstado",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "ItemXProveedor",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    FactorDeConversion = table.Column<decimal>(type: "decimal(2,2)", nullable: true),
                    Precio = table.Column<decimal>(type: "decimal(5,2)", nullable: true),
                    ItemId = table.Column<int>(type: "int", nullable: true),
                    ProveedorId = table.Column<int>(type: "int", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_ItemXProveedor", x => x.Id);
                    table.ForeignKey(
                        name: "FK_ItemXProveedor_Item_ItemId",
                        column: x => x.ItemId,
                        principalTable: "Item",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_ItemXProveedor_Proveedor_ProveedorId",
                        column: x => x.ProveedorId,
                        principalTable: "Proveedor",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "SolicitudDeCotizacion",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Fecha = table.Column<DateTime>(type: "datetime2", nullable: true),
                    ValidacionDelJefeDeLogistica = table.Column<bool>(type: "bit", nullable: true),
                    ProveedorId = table.Column<int>(type: "int", nullable: true),
                    SolicitudDeCotizacionEstadoId = table.Column<int>(type: "int", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_SolicitudDeCotizacion", x => x.Id);
                    table.ForeignKey(
                        name: "FK_SolicitudDeCotizacion_Proveedor_ProveedorId",
                        column: x => x.ProveedorId,
                        principalTable: "Proveedor",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_SolicitudDeCotizacion_SolicitudDeCotizacionEstado_SolicitudDeCotizacionEstadoId",
                        column: x => x.SolicitudDeCotizacionEstadoId,
                        principalTable: "SolicitudDeCotizacionEstado",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "CuadroComparativo",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Fecha = table.Column<DateTime>(type: "datetime2", nullable: true),
                    PedidoId = table.Column<int>(type: "int", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_CuadroComparativo", x => x.Id);
                    table.ForeignKey(
                        name: "FK_CuadroComparativo_Pedido_PedidoId",
                        column: x => x.PedidoId,
                        principalTable: "Pedido",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "Documento",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Fecha = table.Column<DateTime>(type: "datetime2", nullable: true),
                    Ruta = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    Observaciones = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    PedidoId = table.Column<int>(type: "int", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Documento", x => x.Id);
                    table.ForeignKey(
                        name: "FK_Documento_Pedido_PedidoId",
                        column: x => x.PedidoId,
                        principalTable: "Pedido",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "ItemXPedido",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Cantidad = table.Column<int>(type: "int", nullable: true),
                    ItemId = table.Column<int>(type: "int", nullable: true),
                    PedidoId = table.Column<int>(type: "int", nullable: true),
                    ProveedorGanadorId = table.Column<int>(type: "int", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_ItemXPedido", x => x.Id);
                    table.ForeignKey(
                        name: "FK_ItemXPedido_Item_ItemId",
                        column: x => x.ItemId,
                        principalTable: "Item",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_ItemXPedido_Pedido_PedidoId",
                        column: x => x.PedidoId,
                        principalTable: "Pedido",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_ItemXPedido_Proveedor_ProveedorGanadorId",
                        column: x => x.ProveedorGanadorId,
                        principalTable: "Proveedor",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "PedidoXSolicitudDeCotizacion",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Observaciones = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    PedidoId = table.Column<int>(type: "int", nullable: true),
                    SolicitudDeCotizacionId = table.Column<int>(type: "int", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_PedidoXSolicitudDeCotizacion", x => x.Id);
                    table.ForeignKey(
                        name: "FK_PedidoXSolicitudDeCotizacion_Pedido_PedidoId",
                        column: x => x.PedidoId,
                        principalTable: "Pedido",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_PedidoXSolicitudDeCotizacion_SolicitudDeCotizacion_SolicitudDeCotizacionId",
                        column: x => x.SolicitudDeCotizacionId,
                        principalTable: "SolicitudDeCotizacion",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "ItemXPedidoXSolicitudDeCotizacion",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    PrecioUnitario = table.Column<decimal>(type: "decimal(9,2)", nullable: true),
                    PrecioTotal = table.Column<decimal>(type: "decimal(9,2)", nullable: true),
                    ItemXPedidoId = table.Column<int>(type: "int", nullable: true),
                    SolicitudDeCotizacionId = table.Column<int>(type: "int", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_ItemXPedidoXSolicitudDeCotizacion", x => x.Id);
                    table.ForeignKey(
                        name: "FK_ItemXPedidoXSolicitudDeCotizacion_ItemXPedido_ItemXPedidoId",
                        column: x => x.ItemXPedidoId,
                        principalTable: "ItemXPedido",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_ItemXPedidoXSolicitudDeCotizacion_SolicitudDeCotizacion_SolicitudDeCotizacionId",
                        column: x => x.SolicitudDeCotizacionId,
                        principalTable: "SolicitudDeCotizacion",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateIndex(
                name: "IX_CuadroComparativo_PedidoId",
                table: "CuadroComparativo",
                column: "PedidoId");

            migrationBuilder.CreateIndex(
                name: "IX_Documento_PedidoId",
                table: "Documento",
                column: "PedidoId");

            migrationBuilder.CreateIndex(
                name: "IX_ItemXPedido_ItemId",
                table: "ItemXPedido",
                column: "ItemId");

            migrationBuilder.CreateIndex(
                name: "IX_ItemXPedido_PedidoId",
                table: "ItemXPedido",
                column: "PedidoId");

            migrationBuilder.CreateIndex(
                name: "IX_ItemXPedido_ProveedorGanadorId",
                table: "ItemXPedido",
                column: "ProveedorGanadorId");

            migrationBuilder.CreateIndex(
                name: "IX_ItemXPedidoXSolicitudDeCotizacion_ItemXPedidoId",
                table: "ItemXPedidoXSolicitudDeCotizacion",
                column: "ItemXPedidoId");

            migrationBuilder.CreateIndex(
                name: "IX_ItemXPedidoXSolicitudDeCotizacion_SolicitudDeCotizacionId",
                table: "ItemXPedidoXSolicitudDeCotizacion",
                column: "SolicitudDeCotizacionId");

            migrationBuilder.CreateIndex(
                name: "IX_ItemXProveedor_ItemId",
                table: "ItemXProveedor",
                column: "ItemId");

            migrationBuilder.CreateIndex(
                name: "IX_ItemXProveedor_ProveedorId",
                table: "ItemXProveedor",
                column: "ProveedorId");

            migrationBuilder.CreateIndex(
                name: "IX_Pedido_PedidoEstadoId",
                table: "Pedido",
                column: "PedidoEstadoId");

            migrationBuilder.CreateIndex(
                name: "IX_PedidoXSolicitudDeCotizacion_PedidoId",
                table: "PedidoXSolicitudDeCotizacion",
                column: "PedidoId");

            migrationBuilder.CreateIndex(
                name: "IX_PedidoXSolicitudDeCotizacion_SolicitudDeCotizacionId",
                table: "PedidoXSolicitudDeCotizacion",
                column: "SolicitudDeCotizacionId");

            migrationBuilder.CreateIndex(
                name: "IX_SolicitudDeCotizacion_ProveedorId",
                table: "SolicitudDeCotizacion",
                column: "ProveedorId");

            migrationBuilder.CreateIndex(
                name: "IX_SolicitudDeCotizacion_SolicitudDeCotizacionEstadoId",
                table: "SolicitudDeCotizacion",
                column: "SolicitudDeCotizacionEstadoId");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "CuadroComparativo");

            migrationBuilder.DropTable(
                name: "Documento");

            migrationBuilder.DropTable(
                name: "ItemXPedidoXSolicitudDeCotizacion");

            migrationBuilder.DropTable(
                name: "ItemXProveedor");

            migrationBuilder.DropTable(
                name: "PedidoXSolicitudDeCotizacion");

            migrationBuilder.DropTable(
                name: "ItemXPedido");

            migrationBuilder.DropTable(
                name: "SolicitudDeCotizacion");

            migrationBuilder.DropTable(
                name: "Item");

            migrationBuilder.DropTable(
                name: "Pedido");

            migrationBuilder.DropTable(
                name: "Proveedor");

            migrationBuilder.DropTable(
                name: "SolicitudDeCotizacionEstado");

            migrationBuilder.DropTable(
                name: "PedidoEstado");
        }
    }
}
