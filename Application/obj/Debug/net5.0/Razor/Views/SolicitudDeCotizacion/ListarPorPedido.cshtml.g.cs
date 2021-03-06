#pragma checksum "C:\Users\Edson\Downloads\asd123\LOGANTA\Application\Views\SolicitudDeCotizacion\ListarPorPedido.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "0cf62f020dc5eb4dddb39bab14f04c29eeb54f01"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_SolicitudDeCotizacion_ListarPorPedido), @"mvc.1.0.view", @"/Views/SolicitudDeCotizacion/ListarPorPedido.cshtml")]
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
#line 1 "C:\Users\Edson\Downloads\asd123\LOGANTA\Application\Views\_ViewImports.cshtml"
using Application;

#line default
#line hidden
#nullable disable
#nullable restore
#line 2 "C:\Users\Edson\Downloads\asd123\LOGANTA\Application\Views\_ViewImports.cshtml"
using Application.Models;

#line default
#line hidden
#nullable disable
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"0cf62f020dc5eb4dddb39bab14f04c29eeb54f01", @"/Views/SolicitudDeCotizacion/ListarPorPedido.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"03ea476b5db410d4405042b0a5ed991b4e6710c5", @"/Views/_ViewImports.cshtml")]
    public class Views_SolicitudDeCotizacion_ListarPorPedido : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<dynamic>
    {
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_0 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("src", new global::Microsoft.AspNetCore.Html.HtmlString("~/js/site.js"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
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
        private global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.UrlResolutionTagHelper __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper;
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            WriteLiteral(@"<div class=""container w-100 text-center h1 mb-3"" id=""titulo""></div>
<table class=""table table-hover"">
    <thead>
        <tr>
            <th>
                C??digo
            </th>
            <th>
                Fecha
            </th>
            <th>
                Estado
            </th>
            <th>
            </th>
        </tr>
    </thead>
    <tbody id=""tabla"">
    </tbody>
</table>
");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("script", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "0cf62f020dc5eb4dddb39bab14f04c29eeb54f014000", async() => {
            }
            );
            __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.UrlResolutionTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper);
            __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_0);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral(@"
<script>
    // en el espacio de la tabla, agregar un a con la clase btn Para editar
    // el nombre de editar del boton no es el adecuado, debe ser uno que describa
    // el proceso se realizara
    // solo en caso de que el estado es en espera, sino no muestra nada
    /*
     * Variables
     */
    var divTitulo = document.getElementById('titulo');
    var pedidoId;
    var tabla = document.getElementById('tabla');
    var jsonSolicitudesDeCotizacion;
    /*
     * Inicializar
     */
    window.addEventListener('load', function () {
        // colocando el titulo de la pagina
        pedidoId = obtenerIdDeUrl();
        divTitulo.innerHTML = 'Solicitudes de Cotizaci??n del Pedido ' + pedidoId;
        // obtener y mostrar solicitudes
        obtenerMostrarSolicitudesDeCotizacionEnviadas();
    });
    async function obtenerMostrarSolicitudesDeCotizacionEnviadas() {
        await fetch(""/SolicitudDeCotizacion/ObtenerTodasLasSolicitudesDeCotizacionConPedidoId/""+pedidoId)
        ");
            WriteLiteral(@"    .then(function (respuestaDelControlador) {
                return respuestaDelControlador.json();
            })
            .then(function (respuestaDelControladorConvertidoToJSON) {
                jsonSolicitudesDeCotizacion = respuestaDelControladorConvertidoToJSON;
                mostrarSolicitudesDeCotizacion();
            });
    }
    function mostrarSolicitudesDeCotizacion() {
        tabla.innerHTML = '';
        for (let i = jsonSolicitudesDeCotizacion.length - 1; 0 <= i; i--) {
            tr = document.createElement('tr');
            if (jsonSolicitudesDeCotizacion[i].sceDescripcion == 'ESPERA') {
                tr.innerHTML =
                    '<td>' + jsonSolicitudesDeCotizacion[i].scId + '</td>' +
                    '<td>' + convertirFechaJsonEnFecha(jsonSolicitudesDeCotizacion[i].scFecha) + '</td>' +
                    '<td>' + jsonSolicitudesDeCotizacion[i].sceDescripcion + '</td>' +
                    '<td>' + '<a class=""btn border-dark"" href=""/SolicitudDeCotiz");
            WriteLiteral(@"acion/Editar/' + jsonSolicitudesDeCotizacion[i].scId + '"">Editar</a>' + '</td>';
            }
            else {
                tr.innerHTML =
                    '<td>' + jsonSolicitudesDeCotizacion[i].scId + '</td>' +
                    '<td>' + convertirFechaJsonEnFecha(jsonSolicitudesDeCotizacion[i].scFecha) + '</td>' +
                    '<td>' + jsonSolicitudesDeCotizacion[i].sceDescripcion + '</td>';
            }
            tabla.appendChild(tr);
        }
    }
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
