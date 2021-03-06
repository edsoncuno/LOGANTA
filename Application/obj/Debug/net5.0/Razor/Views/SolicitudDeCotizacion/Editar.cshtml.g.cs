#pragma checksum "C:\Users\Edson\Downloads\asd123\LOGANTA\Application\Views\SolicitudDeCotizacion\Editar.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "cc5c336f22cf2aaad73b2b955d2a9cd2aef34eda"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_SolicitudDeCotizacion_Editar), @"mvc.1.0.view", @"/Views/SolicitudDeCotizacion/Editar.cshtml")]
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
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"cc5c336f22cf2aaad73b2b955d2a9cd2aef34eda", @"/Views/SolicitudDeCotizacion/Editar.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"03ea476b5db410d4405042b0a5ed991b4e6710c5", @"/Views/_ViewImports.cshtml")]
    public class Views_SolicitudDeCotizacion_Editar : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<dynamic>
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
            WriteLiteral(@"<div class=""container w-100 text-center h1 mb-3"">Solicitud de Cotizaci??n</div>
<div class=""mb-3"">
    <label class=""font-weight-bold"">C??digo: </label>
    <label id=""solicitudCodigo""></label>
    <br />
    <label class=""font-weight-bold"">Fecha: </label>
    <label id=""solicitudFecha""></label>
    <br />
</div>
<div class=""h3"">Proveedor</div>
<div class="" row mb-3"">
    <div class=""col border border-dark rounded"">
        <label class=""font-weight-bold"">Ruc: </label>
        <label id=""proveedorRuc""></label>
        <br />
        <label class=""font-weight-bold"">Nombre: </label>
        <label id=""proveedorNombre""></label>
        <br />
        <label class=""font-weight-bold"">Direcci??n: </label>
        <label id=""proveedorDireccion""></label>
        <br />
        <label class=""font-weight-bold"">Tel??fono: </label>
        <label id=""proveedorTelefono""></label>
        <br />
        <label class=""font-weight-bold"">Correo: </label>
        <label id=""proveedorCorreo""></label>
    </");
            WriteLiteral(@"div>
    <div class=""col-3"">
        <boton class=""btn btn-success border-dark"" id=""botonActualizar"">Actualizar Estado de los Items del Proveedor</boton>
    </div>
</div>
<table class=""table table-hover"">
    <thead>
        <tr>
            <th>
                C??digo
            </th>
            <th>
                Cantidad
            </th>
            <th>
                Unidad de medida
            </th>
            <th>
                Descripci??n
            </th>
            <th>
                Marca
            </th>
            <th>
                Precio unitario
            </th>
            <th>
                Precio total
            </th>
        </tr>
    </thead>
    <tbody id=""tabla"">
    </tbody>
</table>
");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("script", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "cc5c336f22cf2aaad73b2b955d2a9cd2aef34eda5398", async() => {
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
    /*
     * Variables
     */
    var solicitudCodigo = document.getElementById('solicitudCodigo');
    var solicitudFecha = document.getElementById('solicitudFecha');
    var proveedorRuc = document.getElementById('proveedorRuc');
    var proveedorNombre = document.getElementById('proveedorNombre');
    var proveedorDireccion = document.getElementById('proveedorDireccion');
    var proveedorTelefono = document.getElementById('proveedorTelefono');
    var proveedorCorreo = document.getElementById('proveedorCorreo');
    var jsonSolicitudDeCotizacion;
    var jsonProveedor;
    /*
     * Inicializar
     */
    // este fetch es diferente a los otros
    // ya que se tiene que cocolar un fechar sobre otro
    // ya no se debe colocar el async await
    // sino no funciona
    // la clave esta en el tiempo
    window.addEventListener('load', function () {
        obtenerMostrarSolicitudDeCotizacion();
    });
    function obtenerMostrarSolicitudDeCotizacion() {
        fetch");
            WriteLiteral(@"(""/SolicitudDeCotizacion/ObtenerSolicitudesDeCotizacionConSolicitudesDeCotizacionId/"" + obtenerIdDeUrl())
            .then(function (respuestaDelControlador) {
                return respuestaDelControlador.json();
            })
            .then(function (respuestaDelControladorConvertidoToJSON) {
                jsonSolicitudDeCotizacion = respuestaDelControladorConvertidoToJSON
                mostrarSolicitudDeCotizacion();
                obtenerMostrarProveedor();
            });
    }
    function mostrarSolicitudDeCotizacion() {
        solicitudCodigo.innerHTML = jsonSolicitudDeCotizacion[0].id;
        solicitudFecha.innerHTML = convertirFechaJsonEnFecha(jsonSolicitudDeCotizacion[0].fecha);
    }
    function obtenerMostrarProveedor() {
        console.log(jsonSolicitudDeCotizacion[0].proveedorId);
        fetch(""/Proveedor/ObtenerProveedorConProveedorId/"" + jsonSolicitudDeCotizacion[0].proveedorId)
            .then(function (respuestaDelControlador) {
                return res");
            WriteLiteral(@"puestaDelControlador.json();
            })
            .then(function (respuestaDelControladorConvertidoToJSON) {
                jsonProveedor = respuestaDelControladorConvertidoToJSON
                mostrarProveedor();
            });
    }
    function mostrarProveedor() {
        proveedorRuc.innerHTML = jsonProveedor[0].ruc;
        proveedorNombre.innerHTML = jsonProveedor[0].nombre;
        proveedorDireccion.innerHTML = jsonProveedor[0].direccion;
        proveedorTelefono.innerHTML = jsonProveedor[0].telefono;
        proveedorCorreo.innerHTML = jsonProveedor[0].correo;
    }
    /*
     * POST
     */
    document.getElementById(""botonActualizar"").onclick = actualizar;
    function actualizar() {
        fetch(""/SolicitudDeCotizacion/CambiarEstadoRecivido/"", {
            method: ""POST"",
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({ solicitudDeCotizacionId : jsonSolicitudDeCotizacion[0].id})
    ");
            WriteLiteral(@"    }).then(function (respuestaDelControlador) {
            return respuestaDelControlador.json();
        }).then(function (respuestaDelControladorConvertidoToJSON) {
            if (respuestaDelControladorConvertidoToJSON.estado == 0) {
                alert(respuestaDelControladorConvertidoToJSON.mensaje);
                window.location.href = respuestaDelControladorConvertidoToJSON.newUrl;
            }
            else {
                alert(respuestaDelControladorConvertidoToJSON.mensaje);
            }
        });
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
