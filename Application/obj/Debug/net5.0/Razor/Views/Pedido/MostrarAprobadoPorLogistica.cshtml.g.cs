#pragma checksum "C:\Users\Edson\Downloads\!\TP\LOGANTA\Application\Views\Pedido\MostrarAprobadoPorLogistica.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "21417f1f2f4b637644037e1a0f7b4fc849a9f236"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Pedido_MostrarAprobadoPorLogistica), @"mvc.1.0.view", @"/Views/Pedido/MostrarAprobadoPorLogistica.cshtml")]
namespace AspNetCore
{
    #line hidden
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.AspNetCore.Mvc.Rendering;
    using Microsoft.AspNetCore.Mvc.ViewFeatures;
#nullable restore
#line 1 "C:\Users\Edson\Downloads\!\TP\LOGANTA\Application\Views\_ViewImports.cshtml"
using Application;

#line default
#line hidden
#nullable disable
#nullable restore
#line 2 "C:\Users\Edson\Downloads\!\TP\LOGANTA\Application\Views\_ViewImports.cshtml"
using Application.Models;

#line default
#line hidden
#nullable disable
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"21417f1f2f4b637644037e1a0f7b4fc849a9f236", @"/Views/Pedido/MostrarAprobadoPorLogistica.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"03ea476b5db410d4405042b0a5ed991b4e6710c5", @"/Views/_ViewImports.cshtml")]
    public class Views_Pedido_MostrarAprobadoPorLogistica : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<dynamic>
    {
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_0 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("value", "0", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_1 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("src", new global::Microsoft.AspNetCore.Html.HtmlString("~/js/site.js"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        #line hidden
        #pragma warning disable 0649
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperExecutionContext __tagHelperExecutionContext;
        #pragma warning restore 0649
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner __tagHelperRunner = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner();
        #pragma warning disable 0169
        private string __tagHelperStringValueBuffer;
        #pragma warning restore 0169
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __backed__tagHelperScopeManager = null;
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __tagHelperScopeManager
        {
            get
            {
                if (__backed__tagHelperScopeManager == null)
                {
                    __backed__tagHelperScopeManager = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager(StartTagHelperWritingScope, EndTagHelperWritingScope);
                }
                return __backed__tagHelperScopeManager;
            }
        }
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.OptionTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_OptionTagHelper;
        private global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.UrlResolutionTagHelper __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper;
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            WriteLiteral(@"<div class=""container w-100 h1 text-center mb-3"">Pedido Aprobado por Logística - Solicitar Cotización</div>
<div class=""row mb-3"">
    <div class=""col-8"">
        <label class=""font-weight-bold"">Código: </label>
        <label id=""id""></label>
        <br />
        <label class=""font-weight-bold"">Dirección de Solicitante: </label>
        <label id=""direccionDeSolicitante""></label>
        <br />
        <label class=""font-weight-bold"">Entregar a: </label>
        <label id=""entregarA""></label>
        <br />
        <label class=""font-weight-bold"">Actividad Operativa: </label>
        <label id=""actividadOperativa""></label>
        <br />
        <label class=""font-weight-bold"">Motivo: </label>
        <label id=""motivo""></label>
    </div>
    <div class=""col-4"">
        <label class=""font-weight-bold"">Fecha: </label>
        <label id=""fecha""></label>
        <br />
        <label class=""font-weight-bold"">Hora: </label>
        <label id=""hora""></label>
    </div>
</div>
<div cla");
            WriteLiteral("ss=\"mb-3\">\r\n    <div class=\"input-group mb-3\">\r\n        <div class=\"input-group-prepend\">\r\n            <label class=\"input-group-text\">Proveedores</label>\r\n        </div>\r\n        <select class=\"custom-select\">\r\n            ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("option", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "21417f1f2f4b637644037e1a0f7b4fc849a9f2365304", async() => {
                WriteLiteral("Elegir un proveedor...");
            }
            );
            __Microsoft_AspNetCore_Mvc_TagHelpers_OptionTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.OptionTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_OptionTagHelper);
            BeginWriteTagHelperAttribute();
            __tagHelperStringValueBuffer = EndWriteTagHelperAttribute();
            __tagHelperExecutionContext.AddHtmlAttribute("selected", Html.Raw(__tagHelperStringValueBuffer), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.Minimized);
            __Microsoft_AspNetCore_Mvc_TagHelpers_OptionTagHelper.Value = (string)__tagHelperAttribute_0.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_0);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral(@"
        </select>
        <div class=""input-group-append"">
            <button class=""btn btn-outline-secondary"">Añadir</button>
        </div>
    </div>
    <div class=""mb-3"">
        <div class=""row"">
            <div class=""col"">
                <label class=""font-weight-bold"">Ruc: </label>
                <label id=""ruc""></label>
                <br />
                <label class=""font-weight-bold"">Teléfono: </label>
                <label id=""telefono""></label>
                <br />
            </div>
            <div class=""col"">
                <label class=""font-weight-bold"">Correo: </label>
                <label id=""correo""></label>
                <br />
            </div>
        </div>
        <label class=""font-weight-bold"">Nombre: </label>
        <label id=""nombre""></label>
        <br />
        <label class=""font-weight-bold"">Razon Social: </label>
        <label id=""razonSocial""></label>
    </div>
    <table class=""table table-hover mb-3"">
        <thead>
");
            WriteLiteral(@"            <tr class=""align-items-center"">
                <th>
                    Ruc
                </th>
                <th>
                    Nombre
                </th>
            </tr>
        </thead>
        <tbody id=""tablaConLosItems"">
        </tbody>
    </table>
    <button class=""btn"">Limpiar lista</button>
    <button class=""btn"">Eliminar Ultimo Añadido</button>
    <button class=""btn border-dark mb-1"" type=""button"" data-toggle=""modal"" data-target=""#modalEnviar"">Enviar</button>
</div>
<table class=""table table-hover"">
    <thead>
        <tr class=""align-items-center"">
            <th>
                Código
            </th>
            <th>
                Descripción
            </th>
            <th>
                Cantidad
            </th>
            <th>
                Unidad de medida
            </th>
        </tr>
    </thead>
    <tbody id=""tablaConLosItems"">
    </tbody>
</table>
<!--Modal para la enviar-->
<div class=""modal fade"" id=""");
            WriteLiteral(@"modalEnviar"" tabindex=""-1"" role=""dialog"">
    <div class=""modal-dialog modal-dialog-centered"" role=""document"">
        <div class=""modal-content"">
            <div class=""modal-header"">
                <div class=""modal-title h5"">Enviar Solicitud de Cotización a los Proveedores</div>
                <button type=""button"" class=""close"" data-dismiss=""modal"" aria-label=""Close"">
                    <span aria-hidden=""true"">&times;</span>
                </button>
            </div>
            <div class=""modal-body"">
                <div");
            BeginWriteAttribute("class", " class=\"", 3904, "\"", 3912, 0);
            EndWriteAttribute();
            WriteLiteral(@">¿Esta seguro de enviar la solicitud de cotización a los proveedores seleccionados?</div>
            </div>
            <div class=""modal-footer"">
                <button type=""button"" class=""btn btn-success"" id=""botonEnviar"">Si</button>
                <button type=""button"" class=""btn btn-danger"" data-dismiss=""modal"">No</button>
            </div>
        </div>
    </div>
</div>
");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("script", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "21417f1f2f4b637644037e1a0f7b4fc849a9f23610086", async() => {
            }
            );
            __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.UrlResolutionTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper);
            __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_1);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral(@"
<script>
    var pedidoId = obtenerIdDeUrl();
    //
    var jsonPedido;
    var labelId = document.getElementById('id');
    var labelDireccionDeSolicitante = document.getElementById('direccionDeSolicitante');
    var labelEntregarA = document.getElementById('entregarA');
    var labelActividadOperativa = document.getElementById('actividadOperativa');
    var labelMotivo = document.getElementById('motivo');
    var labelFecha = document.getElementById('fecha');
    var labelHora = document.getElementById('hora');
    //
    var jsonItems;
    var tablaConLosItems = document.getElementById('tablaConLosItems');
    /*
     * Inicializar
     */
    window.addEventListener('load', function () {
        obtenerMostrarPedido();
        obtenerMostrarItems();
    });
    /*
     * Obtener y mostrar Pedido
     */
    async function obtenerMostrarPedido() {
        await fetch(""/Pedido/ObtenerPedidoConPedidoId/"" + pedidoId).then(function (respuestaDelControlador) {
            return res");
            WriteLiteral(@"puestaDelControlador.json();
        }).then(function (respuestaDelControladorConvertidoToJSON) {
            jsonPedido = respuestaDelControladorConvertidoToJSON
            // se coloca mostrar aqui ya que si se coloca afuera por la asincronia no tendria efecto
            mostrarPedido();
        });
    }
    function mostrarPedido() {
        labelId.innerHTML = jsonPedido[0].id;
        labelDireccionDeSolicitante.innerHTML = jsonPedido[0].direccionDeSolicitante;
        labelEntregarA.innerHTML = jsonPedido[0].entregarA;
        labelActividadOperativa.innerHTML = jsonPedido[0].actividadOperativa;
        labelMotivo.innerHTML = jsonPedido[0].motivo;
        labelFecha.innerHTML = convertirFechaJsonEnFecha(jsonPedido[0].fecha);
        labelHora.innerHTML = convertirFechaJsonEnHora(jsonPedido[0].fecha);
    }
    /*
     * Obtener y mostrar Items
     */
    async function obtenerMostrarItems() {
        await fetch(""/Pedido/ObtenerItemsConPedidoId/"" + pedidoId).then(function (respu");
            WriteLiteral(@"estaDelControlador) {
            return respuestaDelControlador.json();
        }).then(function (respuestaDelControladorConvertidoToJSON) {
            jsonItems = respuestaDelControladorConvertidoToJSON;
            // se coloca mostrar aqui ya que si se coloca afuera por la asincronia no tendria efecto
            mostrarItems();
        });
    }
    function mostrarItems() {
        jsonItems.forEach(function (object) {
            var tr = document.createElement('tr');
            tr.innerHTML =
                '<td>' + object.itemId + '</td>' +
                '<td>' + object.itemDescripcion + '</td>' +
                '<td>' + object.ipCantidad + '</td>' +
                '<td>' + object.itemUnidadDeMedida + '</td>';
            tablaConLosItems.appendChild(tr);
        });
    }
    /*
    POST
     */
    /*
    document.getElementById(""botonEnviar"").onclick = enviar;
    function enviar() {
        fetch(""/Pedido/EnviarPedidoATodosLosProveedores/"", {
            method: """);
            WriteLiteral(@"POST"",
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({ id: jsonPedido[0].id })
        }).then(function (respuestaDelControlador) {
            return respuestaDelControlador.json();
        }).then(function (respuestaDelControladorConvertidoToJSON) {
            window.location.href = respuestaDelControladorConvertidoToJSON.newUrl;
        });
    }
    */
</script>");
        }
        #pragma warning restore 1998
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.IModelExpressionProvider ModelExpressionProvider { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IUrlHelper Url { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IViewComponentHelper Component { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IJsonHelper Json { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<dynamic> Html { get; private set; }
    }
}
#pragma warning restore 1591
