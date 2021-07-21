using Microsoft.EntityFrameworkCore.Migrations;

namespace Application.Migrations
{
    public partial class yy : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_ItemXPedido_Item_ItemId",
                table: "ItemXPedido");

            migrationBuilder.AlterColumn<string>(
                name: "Motivo",
                table: "Pedido",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "",
                oldClrType: typeof(string),
                oldType: "nvarchar(max)",
                oldNullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "EntregarA",
                table: "Pedido",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "",
                oldClrType: typeof(string),
                oldType: "nvarchar(max)",
                oldNullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "ActividadOperativa",
                table: "Pedido",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "",
                oldClrType: typeof(string),
                oldType: "nvarchar(max)",
                oldNullable: true);

            migrationBuilder.AddColumn<int>(
                name: "AreaUsuariaId",
                table: "Pedido",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<string>(
                name: "Prioridad",
                table: "Pedido",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "");

            migrationBuilder.AddColumn<int>(
                name: "ProyectoId",
                table: "Pedido",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AlterColumn<int>(
                name: "ItemId",
                table: "ItemXPedido",
                type: "int",
                nullable: false,
                defaultValue: 0,
                oldClrType: typeof(int),
                oldType: "int",
                oldNullable: true);

            migrationBuilder.AlterColumn<int>(
                name: "Cantidad",
                table: "ItemXPedido",
                type: "int",
                nullable: false,
                defaultValue: 0,
                oldClrType: typeof(int),
                oldType: "int",
                oldNullable: true);

            migrationBuilder.CreateTable(
                name: "AreaUsuaria",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Name = table.Column<string>(type: "nvarchar(max)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_AreaUsuaria", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "Proyecto",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Name = table.Column<string>(type: "nvarchar(max)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Proyecto", x => x.Id);
                });

            migrationBuilder.CreateIndex(
                name: "IX_Pedido_AreaUsuariaId",
                table: "Pedido",
                column: "AreaUsuariaId");

            migrationBuilder.CreateIndex(
                name: "IX_Pedido_ProyectoId",
                table: "Pedido",
                column: "ProyectoId");

            migrationBuilder.AddForeignKey(
                name: "FK_ItemXPedido_Item_ItemId",
                table: "ItemXPedido",
                column: "ItemId",
                principalTable: "Item",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_Pedido_AreaUsuaria_AreaUsuariaId",
                table: "Pedido",
                column: "AreaUsuariaId",
                principalTable: "AreaUsuaria",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_Pedido_Proyecto_ProyectoId",
                table: "Pedido",
                column: "ProyectoId",
                principalTable: "Proyecto",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_ItemXPedido_Item_ItemId",
                table: "ItemXPedido");

            migrationBuilder.DropForeignKey(
                name: "FK_Pedido_AreaUsuaria_AreaUsuariaId",
                table: "Pedido");

            migrationBuilder.DropForeignKey(
                name: "FK_Pedido_Proyecto_ProyectoId",
                table: "Pedido");

            migrationBuilder.DropTable(
                name: "AreaUsuaria");

            migrationBuilder.DropTable(
                name: "Proyecto");

            migrationBuilder.DropIndex(
                name: "IX_Pedido_AreaUsuariaId",
                table: "Pedido");

            migrationBuilder.DropIndex(
                name: "IX_Pedido_ProyectoId",
                table: "Pedido");

            migrationBuilder.DropColumn(
                name: "AreaUsuariaId",
                table: "Pedido");

            migrationBuilder.DropColumn(
                name: "Prioridad",
                table: "Pedido");

            migrationBuilder.DropColumn(
                name: "ProyectoId",
                table: "Pedido");

            migrationBuilder.AlterColumn<string>(
                name: "Motivo",
                table: "Pedido",
                type: "nvarchar(max)",
                nullable: true,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)");

            migrationBuilder.AlterColumn<string>(
                name: "EntregarA",
                table: "Pedido",
                type: "nvarchar(max)",
                nullable: true,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)");

            migrationBuilder.AlterColumn<string>(
                name: "ActividadOperativa",
                table: "Pedido",
                type: "nvarchar(max)",
                nullable: true,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)");

            migrationBuilder.AlterColumn<int>(
                name: "ItemId",
                table: "ItemXPedido",
                type: "int",
                nullable: true,
                oldClrType: typeof(int),
                oldType: "int");

            migrationBuilder.AlterColumn<int>(
                name: "Cantidad",
                table: "ItemXPedido",
                type: "int",
                nullable: true,
                oldClrType: typeof(int),
                oldType: "int");

            migrationBuilder.AddForeignKey(
                name: "FK_ItemXPedido_Item_ItemId",
                table: "ItemXPedido",
                column: "ItemId",
                principalTable: "Item",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);
        }
    }
}
