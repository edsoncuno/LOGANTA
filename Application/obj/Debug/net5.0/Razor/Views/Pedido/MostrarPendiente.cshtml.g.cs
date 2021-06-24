#pragma checksum "C:\Users\Edson Cuno\Downloads\LOGANTA\Application\Views\Pedido\MostrarPendiente.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "5e803d5d46fcb1f9fa19390e4b76f1e3256e6d19"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Pedido_MostrarPendiente), @"mvc.1.0.view", @"/Views/Pedido/MostrarPendiente.cshtml")]
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
#line 1 "C:\Users\Edson Cuno\Downloads\LOGANTA\Application\Views\_ViewImports.cshtml"
using Application;

#line default
#line hidden
#nullable disable
#nullable restore
#line 2 "C:\Users\Edson Cuno\Downloads\LOGANTA\Application\Views\_ViewImports.cshtml"
using Application.Models;

#line default
#line hidden
#nullable disable
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"5e803d5d46fcb1f9fa19390e4b76f1e3256e6d19", @"/Views/Pedido/MostrarPendiente.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"03ea476b5db410d4405042b0a5ed991b4e6710c5", @"/Views/_ViewImports.cshtml")]
    public class Views_Pedido_MostrarPendiente : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<dynamic>
    {
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            WriteLiteral(@"<heah>
    <meta http-equiv=""content-type"" content=""text/html; charset=utf-8"" />
</heah>
<div class=""container w-100 h1 text-center mb-3"">Pedido</div>
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
        <label id");
            WriteLiteral(@"=""hora""></label>
        <br />
        <button class=""btn border-success mb-1"" type=""button"" data-toggle=""modal"" data-target=""#modalAprobar"">Aprobar</button>
        <br />
        <button class=""btn border-danger mb-1"" type=""button"" data-toggle=""modal"" data-target=""#modalDesaprobar"">Desaprobar</button>
        <br />
        <button class=""btn border-dark mb-1"" id=""editarCantidades"">Editar las Cantidades de los Items</button>
    </div>
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
    <tbody id=""cuerpoDeLaTabla"">
    </tbody>
</table>
<!--Modal para la aprobacion-->
<div class=""modal fade"" id=""modalAprobar"" tabindex=""-1"" role=""dialog"">
    <div class=""modal-d");
            WriteLiteral(@"ialog modal-dialog-centered"" role=""document"">
        <div class=""modal-content"">
            <div class=""modal-header"">
                <div class=""modal-title h5"">Aprobar</div>
                <button type=""button"" class=""close"" data-dismiss=""modal"" aria-label=""Close"">
                    <span aria-hidden=""true"">&times;</span>
                </button>
            </div>
            <div class=""modal-body"">
                <div");
            BeginWriteAttribute("class", " class=\"", 2491, "\"", 2499, 0);
            EndWriteAttribute();
            WriteLiteral(@">¿Esta seguro de aprobar el pedido?</div>
            </div>
            <div class=""modal-footer"">
                <button type=""button"" class=""btn btn-success"" id=""botonAprobar"">Si</button>
                <button type=""button"" class=""btn btn-secondary"" data-dismiss=""modal"">No</button>
            </div>
        </div>
    </div>
</div>
<!--Modal para desaprobar-->
<div class=""modal fade"" id=""modalDesaprobar"" tabindex=""-1"" role=""dialog"">
    <div class=""modal-dialog modal-dialog-centered"" role=""document"">
        <div class=""modal-content"">
            <div class=""modal-header"">
                <div class=""modal-title h5"">Desaprobar</div>
                <button type=""button"" class=""close"" data-dismiss=""modal"" aria-label=""Close"">
                    <span aria-hidden=""true"">&times;</span>
                </button>
            </div>
            <div class=""modal-body"">
                <label>Observaciones:</label>
                <br />
                <textarea class=""w-100"" id=""obser");
            WriteLiteral("vaciones\"></textarea>\r\n                <div");
            BeginWriteAttribute("class", " class=\"", 3567, "\"", 3575, 0);
            EndWriteAttribute();
            WriteLiteral(@">¿Esta seguro de desaprobar el pedido?</div>
            </div>
            <div class=""modal-footer"">
                <button type=""button"" class=""btn btn-danger"" data-dismiss=""modal"" id=""botonDesaprobar"">Si</button>
                <button type=""button"" class=""btn btn-secondary"" data-dismiss=""modal"">No</button>
            </div>
        </div>
    </div>
</div>
<script>
    var jsonPedido;
    var jsonItems;
    var cuerpoDeLaTabla = document.getElementById('cuerpoDeLaTabla');
    var id = document.getElementById('id');
    var direccionDeSolicitante = document.getElementById('direccionDeSolicitante');
    var entregarA = document.getElementById('entregarA');
    var actividadOperativa = document.getElementById('actividadOperativa');
    var motivo = document.getElementById('motivo');
    var fecha = document.getElementById('fecha');
    var hora = document.getElementById('hora');
    var numeroId = obtenerIdDeUrl();
    urlRequestObtenerPedido = ""/Pedido/ObtenerPedido/"" + numeroId;
 ");
            WriteLiteral(@"   urlRequestObtenerItems = ""/Pedido/ObtenerItems/"" + numeroId;
    window.addEventListener('load', function () {
        obtenerPedido();
        obtenerItems();
    });
    function mostrarPedido() {
        id.innerHTML = jsonPedido[0].id;
        direccionDeSolicitante.innerHTML = jsonPedido[0].direccionDeSolicitante;
        entregarA.innerHTML = jsonPedido[0].entregarA;
        actividadOperativa.innerHTML = jsonPedido[0].actividadOperativa;
        motivo.innerHTML = jsonPedido[0].motivo;
        fecha.innerHTML = convertirFechaJsonEnFecha(jsonPedido[0].fecha);
        hora.innerHTML = convertirFechaJsonEnHora(jsonPedido[0].fecha);
    }
    function obtenerPedido() {
        this.fetch(urlRequestObtenerPedido).then(function (respuestaDelControlador) {
            return respuestaDelControlador.json();
        }).then(function (respuestaDelControladorConvertidoToJSON) {
            jsonPedido = JSON.parse(JSON.stringify(respuestaDelControladorConvertidoToJSON));
            mostrarPe");
            WriteLiteral(@"dido();
        });
    }
    function obtenerItems() {
        this.fetch(urlRequestObtenerItems).then(function (respuestaDelControlador) {
            return respuestaDelControlador.json();
        }).then(function (respuestaDelControladorConvertidoToJSON) {
            jsonItems = JSON.parse(JSON.stringify(respuestaDelControladorConvertidoToJSON));
            mostrarItems();
            agregarEventoDeCambioALasCantidades();
        });
    }
    function mostrarItems() {
        jsonItems.forEach(function (object) {
            var tr = document.createElement('tr');
            tr.innerHTML =
                '<td>' + object.itemId + '</td>' +
                '<td>' + object.descripcion + '</td>' +
                '<td>' + '<input class=""items"" type=""number"" id=""' + object.id + '"" value=""' + object.cantidad + '"" disabled> ' + '</td>' +
                '<td>' + object.unidadDeMedida + '</td>';
            cuerpoDeLaTabla.appendChild(tr);
        });
    }
    function convertirFechaJ");
            WriteLiteral(@"sonEnFecha(fechaJson) {
        let fecha = /^\d\d\d\d[-]\d\d[-]\d\d/.exec(fechaJson);
        let año = /^[\d]+/.exec(fecha);
        let mes = /-[\d]+-/.exec(fecha);
        let dia = /[\d]+$/.exec(fecha);
        return dia + mes + año;
    }
    function convertirFechaJsonEnHora(fechaJson) {
        let hora = /\d\d:\d\d:\d\d/.exec(fechaJson);
        return /\d\d:\d\d/.exec(hora);
    }
    function obtenerIdDeUrl() {
        url = window.location;
        regexId = /[\d]+$/;
        return regexId.exec(url)[0];
    }
    /*
     * Aqui abajo esta el codigo para activar y desactivar la edicion de las cantidades
     */
    var esEditableLasCantidades = false;
    var cantidades = document.getElementsByClassName('items');
    var botonEditarCantidad = document.getElementById('editarCantidades');
    botonEditarCantidad.addEventListener('click',cambiarEstadoDeCantidades);
    function cambiarEstadoDeCantidades() {
        if (esEditableLasCantidades == false) {
            esEditab");
            WriteLiteral(@"leLasCantidades = true;
            botonEditarCantidad.innerHTML = 'Dejar de Editar las Cantidades de los Items';
            activarEdicionDeCantidades();
        }
        else {
            esEditableLasCantidades = false;
            botonEditarCantidad.innerHTML = 'Editar las Cantidades de los Items';
            desactivarEdicionDeCantidades();
        }
    }
    function activarEdicionDeCantidades() {
        for (let i = 0; i<cantidades.length;i++) {
            cantidades[i].disabled = false;
        }
    }
    function desactivarEdicionDeCantidades() {
        for (let i = 0; i < cantidades.length; i++) {
            cantidades[i].disabled = true;
        }
    }
    /*
     * Aqui abajo esta el codigo para validar las cantidades
     * El evento cambio que ayuda a validar el valor de cantidades es invocado al mostrar los items
     * ya que es necesarios obtenerlos y mostrarlos para saber cuales son y agregar los eventos
     * a cada uno
     */
    function agregarEve");
            WriteLiteral(@"ntoDeCambioALasCantidades() {
        for (let i = 0; i < cantidades.length; i++) {
            cantidades[i].onchange = function () { validarQueElValorSeaUnNumeroEnteroPositivoIncluidoElCero(cantidades[i]) };
        }
    }
    function validarQueElValorSeaUnNumeroEnteroPositivoIncluidoElCero(elementoHtml) {
        if (elementoHtml.value == '') {
            elementoHtml.value = 0;
            console.log(elementoHtml.value);
        }
        else {
            var temp = elementoHtml.value
            temp = temp.replace(/^0+/, '');
            elementoHtml.value = temp;
            console.log(elementoHtml.value);
        }
    }
    /*
     * Aqui abajao estara el codigo para los events y enviar
     * los datos de aprobar y desaprobar
     */
    /*
    document.getElementById(""botonAprobar"").onmouseover = function () {
        document.getElementById(""aprobarInputPedidoId"").value = jsonPedido[0].id;
        //document.getElementById(""aprobarInputCantidades"").value = obtenerJso");
            WriteLiteral(@"nDeLasCantidades();
    }
    document.getElementById(""botonDesaprobar"").onmouseover = function () {
        document.getElementById(""desaprobarInputPedidoId"").value = jsonPedido[0].id;
        document.getElementById(""desaprobarInputObservaciones1"").value = document.getElementById(""observaciones"").value
        document.getElementById(""desaprobarInputCantidades"").value = obtenerJsonDeLasCantidades();
    }
    */
    /*
    function obtenerJsonDeLasCantidades1() {
        let stringTemporal = """";
        var jsonConLasCantidades = ""[ "";
        for (let i = 0; i < cantidades.length; i++) {
            stringTemporal = jsonConLasCantidades.concat(""{ id: "" + cantidades[i].id + "", cantidad: "" + cantidades[i].value + ""},"");
            jsonConLasCantidades = stringTemporal;
        }
        stringTemporal = jsonConLasCantidades.slice(0, -1);
        jsonConLasCantidades = stringTemporal;
        stringTemporal = jsonConLasCantidades.concat("" ]"")
        jsonConLasCantidades = stringTemporal;");
            WriteLiteral(@"
        return jsonConLasCantidades;
    }
    */
    function obtenerJsonDeLasCantidades() {
        let jsonConLasCantidades = [];
        for (let i = 0; i < cantidades.length; i++) {
            let objCantidad = {};
            objCantidad[""id""] = cantidades[i].id;
            objCantidad[""cantidad""] = cantidades[i].value;
            jsonConLasCantidades.push(objCantidad);
        }
        return jsonConLasCantidades;
    }
    /*
     * 
     */
    document.getElementById(""botonAprobar"").onclick = aprobar;
    function aprobar() {
        
        fetch(""/Pedido/AprobarPedidoPendiente/"", {
            method: ""POST"",
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({ id: jsonPedido[0].id, cantidades: obtenerJsonDeLasCantidades() })
        }).then(function (respuestaDelControlador) {
            return respuestaDelControlador.json();
        }).then(function (respuestaDelControladorConvertidoToJSON) {");
            WriteLiteral(@"
            console.log(respuestaDelControladorConvertidoToJSON);
            window.location.href = respuestaDelControladorConvertidoToJSON.newUrl;
            //window.location.href = ""/Pedido/ListarPendientes/"";
        });
    }
    document.getElementById(""botonDesaprobar"").onclick = desaprobar;
    function desaprobar() {

        fetch(""/Pedido/DesaprobarPedidoPendiente/"", {
            method: ""POST"",
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({ id: jsonPedido[0].id, observacion: document.getElementById(""observaciones"").value, cantidades: obtenerJsonDeLasCantidades() })
        }).then(function (respuestaDelControlador) {
            return respuestaDelControlador.json();
        }).then(function (respuestaDelControladorConvertidoToJSON) {
            console.log(respuestaDelControladorConvertidoToJSON);
            window.location.href = respuestaDelControladorConvertidoToJSON.newUrl;
            //win");
            WriteLiteral("dow.location.href = \"/Pedido/ListarPendientes/\";\r\n        });\r\n    }\r\n</script>\r\n\r\n");
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
