#pragma checksum "C:\Users\Edson\Downloads\asd123\LOGANTA\Application\Views\Pedido\MostrarAprobadoPorLogistica.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "babd91ec17231188129fdfe6a547dea1f2861bb9"
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
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"babd91ec17231188129fdfe6a547dea1f2861bb9", @"/Views/Pedido/MostrarAprobadoPorLogistica.cshtml")]
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
            WriteLiteral(@"<div class=""container w-100 h1 text-center mb-3"">Pedido Aprobado por Log??stica - Solicitar Cotizaci??n</div>
<div class=""row mb-3"">
    <div class=""col-8"">
        <label class=""font-weight-bold"">C??digo: </label>
        <label id=""id""></label>
        <br />
        <label class=""font-weight-bold"">Direcci??n de Solicitante: </label>
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
            WriteLiteral(@"ss=""mb-3 border border-dark rounded p-5"">
    <div class=""input-group mb-3"">
        <div class=""input-group-prepend"">
            <label class=""input-group-text"">Proveedores</label>
        </div>
        <select class=""custom-select"" id=""selectProveedores"">
            ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("option", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "babd91ec17231188129fdfe6a547dea1f2861bb95355", async() => {
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
            <button class=""btn btn-outline-secondary"" id=""botonAgregar"">Agregar</button>
        </div>
    </div>
    <div class=""mb-3"">
        <div class=""h2 text-center mb-3"">Proveedor</div>
        <div class=""row"">
            <div class=""col"">
                <label class=""font-weight-bold"">Ruc: </label>
                <label id=""ruc""></label>
                <br />
                <label class=""font-weight-bold"">Tel??fono: </label>
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
        <label id=""razonSocial""></labe");
            WriteLiteral(@"l>
    </div>
    <table class=""table table-hover mb-1"">
        <thead>
            <tr class=""align-items-center"">
                <th>
                    Ruc
                </th>
                <th>
                    Nombre
                </th>
            </tr>
        </thead>
        <tbody id=""tablaConProveedores"">
        </tbody>
    </table>
    <button class=""btn border-dark mb-1"" id=""botonLimpiarLista"">Limpiar lista</button>
    <button class=""btn border-dark mb-1"" id=""botonEliminarElUltimoAgregado"">Eliminar el ??ltimo agregado</button>
    <br />
    <button class=""btn border-dark"" data-toggle=""modal"" data-target=""#modalEnviar"">Enviar</button>
</div>
<table class=""table table-hover"">
    <thead>
        <tr class=""align-items-center"">
            <th>
                C??digo
            </th>
            <th>
                Descripci??n
            </th>
            <th>
                Cantidad
            </th>
            <th>
                Unidad de med");
            WriteLiteral(@"ida
            </th>
        </tr>
    </thead>
    <tbody id=""tablaConLosItems"">
    </tbody>
</table>
<!--Modal para la enviar-->
<div class=""modal fade"" id=""modalEnviar"" tabindex=""-1"" role=""dialog"">
    <div class=""modal-dialog modal-dialog-centered"" role=""document"">
        <div class=""modal-content"">
            <div class=""modal-header"">
                <div class=""modal-title h5"">Enviar Solicitud de Cotizaci??n a los Proveedores</div>
                <button type=""button"" class=""close"" data-dismiss=""modal"" aria-label=""Close"">
                    <span aria-hidden=""true"">&times;</span>
                </button>
            </div>
            <div class=""modal-body"">
                <div");
            BeginWriteAttribute("class", " class=\"", 4127, "\"", 4135, 0);
            EndWriteAttribute();
            WriteLiteral(@">??Esta seguro de enviar la solicitud de cotizaci??n a los proveedores seleccionados?</div>
            </div>
            <div class=""modal-footer"">
                <button type=""button"" class=""btn btn-success"" id=""botonEnviar"">Si</button>
                <button type=""button"" class=""btn btn-danger"" data-dismiss=""modal"">No</button>
            </div>
        </div>
    </div>
</div>
");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("script", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "babd91ec17231188129fdfe6a547dea1f2861bb910312", async() => {
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
    /*
     * Variables
     */
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
    //
    var jsonProveedores;
    var selectProveedores = document.getElementById('selectProveedores');
    var jsonProveedoresEnSelect;
    var jsonProveedoresEnLista;
    var tablaConProveedores = document.getElementById('tablaConProveedores');
    var botonAgregar = document.getElementById('botonAgregar');
    var botonLimpiarLista = documen");
            WriteLiteral(@"t.getElementById('botonLimpiarLista');
    var botonEliminarElUlitmoEnLaLista = document.getElementById('botonEliminarElUltimoAgregado');
    //
    var jsonParametrosParaEnviar;
    var jsonResultadDeEnviar;
    /*
     * Inicializar
     */
    window.addEventListener('load', function () {
        obtenerMostrarPedido();
        obtenerMostrarItems();
        obtenerMostrarProveedoresEnElSelect();
    });
    /*
     * Obtener y mostrar Pedido
     */
    async function obtenerMostrarPedido() {
        await fetch(""/Pedido/ObtenerPedidoConPedidoId/"" + pedidoId).then(function (respuestaDelControlador) {
            return respuestaDelControlador.json();
        }).then(function (respuestaDelControladorConvertidoToJSON) {
            jsonPedido = respuestaDelControladorConvertidoToJSON
            // se coloca mostrar aqui ya que si se coloca afuera por la asincronia no tendria efecto
            mostrarPedido();
        });
    }
    function mostrarPedido() {
        labelId.innerH");
            WriteLiteral(@"TML = jsonPedido[0].id;
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
        await fetch(""/Pedido/ObtenerItemsConPedidoId/"" + pedidoId).then(function (respuestaDelControlador) {
            return respuestaDelControlador.json();
        }).then(function (respuestaDelControladorConvertidoToJSON) {
            jsonItems = respuestaDelControladorConvertidoToJSON;
            // se coloca mostrar aqui ya que si se coloca afuera por la asincronia no tendria efecto
            mostrarItems();
        });
    }
    functi");
            WriteLiteral(@"on mostrarItems() {
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
     * Obtener y mostrar Proveedores en un select
     */
    async function obtenerMostrarProveedoresEnElSelect() {
        await fetch(""/Proveedor/ObtenerTodosLosProveedores/"").then(function (respuestaDelControlador) {
            return respuestaDelControlador.json();
        }).then(function (respuestaDelControladorConvertidoToJSON) {
            jsonProveedores = respuestaDelControladorConvertidoToJSON;
            // se coloca mostrar aqui ya que si se coloca afuera por la asincronia no tendria efecto
            llenarSelectConJson(selectProveedore");
            WriteLiteral(@"s, jsonProveedores);
            jsonProveedoresEnSelect = jsonProveedores;
            jsonProveedoresEnLista = [];
        });
    }
    function llenarSelectConJson(select, json) {
        for (let i = 0; i < json.length; i++) {
            let option = document.createElement(""option"");
            option.value = json[i].ruc;
            option.text = json[i].nombre;
            select.appendChild(option);
        }
    }
    /*
     * Aqui el codigo para ver los datos del proveedor
     */
    selectProveedores.onchange = function () {
        for (let i = 0; i<jsonProveedores.length;i++) {
            if (selectProveedores.value == jsonProveedores[i].ruc) {
                document.getElementById('ruc').innerHTML = jsonProveedores[i].ruc;
                document.getElementById('telefono').innerHTML = jsonProveedores[i].telefono;
                document.getElementById('correo').innerHTML = jsonProveedores[i].correo;
                document.getElementById('nombre').innerHTML = json");
            WriteLiteral(@"Proveedores[i].nombre;
                document.getElementById('razonSocial').innerHTML = jsonProveedores[i].razonSocial;
                break;
            }
        }
    }
    /*
     * Aqui esta el codigo para a??adir proveedores a la lista
     */
    botonAgregar.onclick = function () {
        jsonProveedoresEnLista = agregarDeSelectAUnaLista(selectProveedores, jsonProveedoresEnLista);
        mostrarProveedoresEnLaLista(jsonProveedoresEnLista);
    }
    function agregarDeSelectAUnaLista(select, json) {
        // si el valo der select es diferente de 0, osea que se selecciona algo
        if (select.value != 0) {
            let existe = false;
            for (let i = 0; i < json.length; i++) {
                if (json[i].ruc == select.value) {
                    existe = true;
                }
            }
            if (existe == false) {
                let obj = {};
                obj[""ruc""] = select.value;
                obj[""nombre""] = select.options[select.select");
            WriteLiteral(@"edIndex].text;
                json.push(obj);
            }
            return json;
        }
    }
    function mostrarProveedoresEnLaLista(json) {
        tablaConProveedores.innerHTML = '';
        for (let i = 0; i < json.length; i++) {
            let tr = document.createElement('tr');
            tr.innerHTML =
                '<td>' + json[i].ruc + '</td>' +
                '<td>' + json[i].nombre + '</td>';
            tablaConProveedores.appendChild(tr);
        }
    }
    /*
     * Aqui esta el codigo para limpiar la lista de proveedores con la tabla
     */
    botonLimpiarLista.onclick = limpiarListaDeProveedores;
    function limpiarListaDeProveedores() {
        jsonProveedoresEnLista = [];
        mostrarProveedoresEnLaLista(jsonProveedoresEnLista);
    }
    /*
     * Aqui esta el codigo para eliminar el ultimo elemento en la lista
     */
    botonEliminarElUlitmoEnLaLista.onclick = eliminarElUltimoEnLaLista;
    function eliminarElUltimoEnLaLista() {
        j");
            WriteLiteral(@"sonProveedoresEnLista.pop();
        mostrarProveedoresEnLaLista(jsonProveedoresEnLista);
    }
    /*
     * POST
     */
    document.getElementById(""botonEnviar"").onclick = enviar;
    function enviar() {
        if (esValidaLaListaDeProveedores()[0]) {
            fetch(""/SolicitudDeCotizacion/EnviarSolicitudDeCotizacion/"", {
                method: ""POST"",
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify({ pedidoId: jsonPedido[0].id, rucs: obtenerRucsDeLaListaDeProveedores() })
            }).then(function (respuestaDelControlador) {
                return respuestaDelControlador.json();
            }).then(function (respuestaDelControladorConvertidoToJSON) {
                if (respuestaDelControladorConvertidoToJSON.estado == 0) {
                    alert(respuestaDelControladorConvertidoToJSON.mensaje);
                    window.location.href = respuestaDelControladorConvertidoToJSON.newUrl;");
            WriteLiteral(@"
                }
                else {
                    alert(respuestaDelControladorConvertidoToJSON.mensaje);
                }
            });
        }
        else {
            alert(esValidaLaListaDeProveedores()[1]);
        }
    }
    function obtenerRucsDeLaListaDeProveedores() {
        let json = [];
        for (let i = 0; i < jsonProveedoresEnLista.length; i++) {
            let object = {};
            object[""ruc""] = jsonProveedoresEnLista[i].ruc
            json.push(object);
        }
        return json;
    }
    function esValidaLaListaDeProveedores() {
        if (jsonProveedoresEnLista.length <= 1) {
            return [false, ""La lista de proveedores debe contener al menos dos de ellos""];
        }
        else {
            return [true, null];
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
