#pragma checksum "C:\Users\Edson\Downloads\!\TP\LOGANTA\Application\Views\CuadroComparativo\Realizar.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "81c7817733917bbeb521b96ebb271b63aaa350ca"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_CuadroComparativo_Realizar), @"mvc.1.0.view", @"/Views/CuadroComparativo/Realizar.cshtml")]
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
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"81c7817733917bbeb521b96ebb271b63aaa350ca", @"/Views/CuadroComparativo/Realizar.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"03ea476b5db410d4405042b0a5ed991b4e6710c5", @"/Views/_ViewImports.cshtml")]
    public class Views_CuadroComparativo_Realizar : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<dynamic>
    {
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_0 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("value", "0", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
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
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            WriteLiteral(@"<h1>Realizar Cuadro Comparativo</h1>
<div class=""row mt-4"">
    <div class=""col-7 "">
        <div class=""row "">
            <p class=""alert-info mt-3 m-sm-2 font-weight-bold"">Primero agregue productos y luego seleccione proveedores</p>
            <div class=""col-9"">
                <div class=""row row-cols-2 mx-2 mt-4"">
                    <div class=""col"">
                        <label class=""font-weight-bold"">Producto:</label>
                    </div>
                    <div class=""col"">
                        <select class=""form-control border border-dark rounded"" name=""selectProductos"" aria-label=""Default select example"" id=""selectItems"">
                            ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("option", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "81c7817733917bbeb521b96ebb271b63aaa350ca4142", async() => {
                WriteLiteral("Seleccione un Producto..");
            }
            );
            __Microsoft_AspNetCore_Mvc_TagHelpers_OptionTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.OptionTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_OptionTagHelper);
            __Microsoft_AspNetCore_Mvc_TagHelpers_OptionTagHelper.Value = (string)__tagHelperAttribute_0.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_0);
            BeginWriteTagHelperAttribute();
            __tagHelperStringValueBuffer = EndWriteTagHelperAttribute();
            __tagHelperExecutionContext.AddHtmlAttribute("selected", Html.Raw(__tagHelperStringValueBuffer), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.Minimized);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral(@"
                        </select>
                    </div>
                </div>
                <div class=""row row-cols-2 mx-2 mt-3"">
                    <div class=""col"">
                        <label class=""font-weight-bold"">Proveedor:</label>
                    </div>
                    <div class=""col"">
                        <select class=""form-control border border-dark rounded "" aria-label=""Default select example"" type=""text"" disabled id=""selectProveedores""></select>
                    </div>
                </div>
            </div>
            <div class=""col-3"">
                <input class=""btn border mt-4"" type=""button"" value=""Agregar"" id=""botonAgregar"" />
            </div>
        </div>
        <div class=""row"">
            <table class=""table table-bordered mx-2 mt-5"">
                <thead>
                    <tr>
                        <th>Producto</th>
                        <th>Vendedor</th>
                    </tr>
                </thead>
        ");
            WriteLiteral(@"        <tbody id=""cuerpoDeLaTabla"">
                </tbody>
            </table>
        </div>
        <div class=""row my-4"">
            <div class=""col-6"">
                <input class=""btn border m-2"" disabled type=""button"" value=""Obtener Ganador"" id=""botonObtenerGanador"" />
            </div>
            <div class=""col-6"">
                <input class=""btn border m-2"" type=""button"" value=""Nueva Comparación"" id=""botonNuevo"" />
            </div>
        </div>
    </div>
    <div class=""col-5 "">
        <div class=""row  m-2"">
            <div class=""col-12"">
                <fieldset class=""border border-info p-2"">
                    <legend class=""w-auto text-info"">Ganador de la Comparación</legend>
                    <table class=""table table-info"">
                        <thead>
                            <tr>
                                <th>Producto</th>
                                <th>Precio</th>
                                <th>Vendedor</th>
                ");
            WriteLiteral(@"            </tr>
                        </thead>
                        <tbody id=""cuerpoDeLaTablaGanadores"">
                        </tbody>
                    </table>
                </fieldset>
            </div>
            <div class=""col-12"">
                <input class=""btn border border-info my-2"" type=""button"" value=""Guardar"" disabled id=""botonGuardar""/>
            </div>
        </div>
    </div>
</div>
<script>
    var jsonTodosLosItems;
    var jsonProveedores;
    var selectItems = document.getElementById(""selectItems"");
    var selectProveedores = document.getElementById(""selectProveedores"");
    var botonAgregar = document.getElementById(""botonAgregar"");
    var cuerpoDeLaTabla = document.getElementById(""cuerpoDeLaTabla"");
    var botonNuevo = document.getElementById(""botonNuevo"");
    var botonObtenerGanador = document.getElementById(""botonObtenerGanador"");
    var pasoLaValidacionParaActivarElBotonActivarGanador = false;
    var json = [];
    var jsonGanadores");
            WriteLiteral(@";
    var cuerpoDeLaTablaGanadores = document.getElementById(""cuerpoDeLaTablaGanadores"");
    var botonGuardar = document.getElementById(""botonGuardar"");
    /*
     * Aqui se comienza el codigo para llenar el selct con los items
     */
    window.addEventListener('load', function () {
        obtenerTodosLosItems();
    });
    function obtenerTodosLosItems() {
        fetch(""/CuadroComparativo/ObtenerTodosLosItems/"").then(function (respuestaDelControlador) {
            return respuestaDelControlador.json();
        }).then(function (respuestaDelControladorConvertidoToJSON) {
            jsonTodosLosItems = JSON.parse(JSON.stringify(respuestaDelControladorConvertidoToJSON));
            llenarSelectItems();
        });
    }
    function llenarSelectItems() {
        for (let i = 0; i < jsonTodosLosItems.length; i++) {
            let option = document.createElement(""option"");
            option.text = jsonTodosLosItems[i].descripcion;
            option.value = jsonTodosLosItems[i].id");
            WriteLiteral(@";
            selectItems.appendChild(option);
        }
    }
    /*
     * Aqui comienza el codigo para llenar el select con los proveedores
     */
    selectItems.onchange = cambiarItem;
    function cambiarItem() {
        if (selectItems.value != 0) {
            selectProveedores.disabled = false;
            obtenerProveedoresYLlenarSelectProveedores();
        }
        else {
            selectProveedores.disabled = true;
            limpiarSelectProveedores();
        }
    }
    function obtenerProveedoresYLlenarSelectProveedores() {
        fetch(""/CuadroComparativo/ObtenerProveedorPorItemId/"" + selectItems.value).then(function (respuestaDelControlador) {
            return respuestaDelControlador.json();
        }).then(function (respuestaDelControladorConvertidoToJSON) {
            jsonProveedores = JSON.parse(JSON.stringify(respuestaDelControladorConvertidoToJSON));
            limpiarSelectProveedores();
            llenarSelectProveedores();
        });
    }
    ");
            WriteLiteral(@"function llenarSelectProveedores() {
        for (let i = 0; i < jsonProveedores.length; i++) {
            let option = document.createElement(""option"");
            option.text = jsonProveedores[i].nombre;
            option.value = jsonProveedores[i].id;
            selectProveedores.appendChild(option);
        }
    }
    function limpiarSelectProveedores() {
        for (let i = selectProveedores.length - 1; i >= 0; i--) {
            selectProveedores.remove(i);
        }
    }
    /*
     * Aqui comienza el codigo para agregar
     */
    botonAgregar.onclick = agregar;
    function agregar() {
        if (selectItems.value != 0) {
            let existe = false;
            for (let i = 0; i < json.length; i++) {
                if (json[i].itemId == selectItems.value && json[i].proveedorId == selectProveedores.value) {
                    existe = true;
                }
            }
            if (existe == false) {
                agregarAJson();
            }
       ");
            WriteLiteral(@"     mostrarJson();
            // aqui se usara la activacion del boton Obtener Ganador
            botonObtenerGanador.disabled = validacionParaActivarBotonObtenerGanador();
        }
    }
    function agregarAJson() {
        let obj = {};
        obj[""itemId""] = selectItems.value;
        obj[""itemNombre""] = selectItems.options[selectItems.selectedIndex].text;
        obj[""proveedorId""] = selectProveedores.value;
        obj[""proveedorNombre""] = selectProveedores.options[selectProveedores.selectedIndex].text;
        json.push(obj);
    }
    function mostrarJson() {
        cuerpoDeLaTabla.innerHTML = '';
        for (let i = 0; i < json.length; i++) {
            let tr = document.createElement('tr');
            tr.innerHTML =
                '<td>' + json[i].itemNombre + '</td>' +
                '<td>' + json[i].proveedorNombre + '</td>';
            cuerpoDeLaTabla.appendChild(tr);
        }
    }
    /*
     * Aqui abajo se encuentra el codigo para nueva comparacion
     *");
            WriteLiteral(@"/
    botonNuevo.onclick = limpiarTabla;
    function limpiarTabla() {
        cuerpoDeLaTabla.innerHTML = '';
        cuerpoDeLaTablaGanadores.innerHTML = '';
        json = [];
        botonObtenerGanador.disabled = true;
        botonGuardar.disabled = true;
        pasoLaValidacionParaActivarElBotonActivarGanador = false;
    }
    /*
     * Aqui abajo se encuentra el codigo para la validacion de la activacion del boton
     * boton Obtener Ganador
     */
    function validacionParaActivarBotonObtenerGanador() {
        if (json.length >= 2) {
            if (pasoLaValidacionParaActivarElBotonActivarGanador) {
                return false;
            }
            else {
                let unProveedor = json[0].proveedorId;
                if (selectProveedores.value != json[0].proveedorId) {
                    pasoLaValidacionParaActivarElBotonActivarGanador = true;
                    return false;
                }

            }
            return true;
        }
     ");
            WriteLiteral(@"   else {
            return true;
        }
    }
    /*
     * Aqui abajo estara el codigo de Obtener Ganador
     */
    botonObtenerGanador.onclick = obtenerGanador;
    function obtenerGanador() {
        fetch(""/CuadroComparativo/ObtenerGanador/"", {
            method: ""POST"",
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify(json)
        }).then(function (respuestaDelControlador) {
            return respuestaDelControlador.json();
        }).then(function (respuestaDelControladorConvertidoToJSON) {
            jsonGanadores = respuestaDelControladorConvertidoToJSON;
            mostrarGanadores();
        });
        botonGuardar.disabled = false;
    }
    function mostrarGanadores() {
        cuerpoDeLaTablaGanadores.innerHTML = '';
        for (let i = 0; i < json.length; i++) {
            let tr = document.createElement('tr');
            tr.innerHTML =
                '<td>' + jsonGanadores[i].it");
            WriteLiteral(@"emDescripcion + '</td>' +
                '<td>' + jsonGanadores[i].itemPrecio + '</td>' +
                '<td>' + jsonGanadores[i].proveedorNombre + '</td>';
            cuerpoDeLaTablaGanadores.appendChild(tr);
        }
    }
    /*
     * Aqui abajo esta el codigo de el boton Guardar
     */
    botonGuardar.onclick = guardarGanador;
    function guardarGanador() {
        fetch(""/CuadroComparativo/GuardarGanador/"", {
            method: ""POST"",
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify(jsonGanadores)
        }).then(function (respuestaDelControlador) {
            return respuestaDelControlador.json();
        }).then(function (respuestaDelControladorConvertidoToJSON) {
            window.location.href = respuestaDelControladorConvertidoToJSON.newUrl;
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
