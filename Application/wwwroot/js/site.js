/*
 * obtener el id del pedido desde la url
 */
function obtenerIdDeUrl() {
    url = window.location;
    regexId = /[\d]+$/;
    return regexId.exec(url)[0];
}
/*
 * Convertir Fecha Json en Fecha
 */
function convertirFechaJsonEnFecha(fechaJson) {
    let fecha = /^\d\d\d\d[-]\d\d[-]\d\d/.exec(fechaJson);
    let año = /^[\d]+/.exec(fecha);
    let mes = /-[\d]+-/.exec(fecha);
    let dia = /[\d]+$/.exec(fecha);
    return dia + mes + año;
}
/*
 * Convertir Fecha Json en Hora
 */
function convertirFechaJsonEnHora(fechaJson) {
    let hora = /\d\d:\d\d:\d\d/.exec(fechaJson);
    return /\d\d:\d\d/.exec(hora);
}
/*
 * Verficar que un dato sea un numero entero
 */
function esUnNumeroEntero(numero) {
    if (numero % 1 == 0) {
        return true;
    }
    else {
        return false;
    }
}
/*
 * validar que el valor de un elementoHtml sea un entro no negativo
 * en este caso retornar 
 * un numero que es 0 en caso de no cumplir la condicion
 * y un texto que indica que condicion no cumplio
 * en caso de ser valido, retorna el numero y un null
 */
function validarQueElValorSeaUnNumeroEnteroNoNegativo(elementoHtml) {
    let valorDelElementoHtml = elementoHtml.value;
    // si el valor del elementoHtml es vacio
    if (valorDelElementoHtml == "" || valorDelElementoHtml == null) {
        return [0, "No se ingreso ningun número"];
    }
    else {
        // si el valor del elementoHtml no un numero
        if (isNaN(valorDelElementoHtml)) {
            return [0, "No se ingreso un número"];
        }
        else {
            // si el valor del elementoHtml es un numero negativo
            if (valorDelElementoHtml < 0) {
                return [0, "No se permiten números negativos"];
            }
            else {
                // si el valor del elementoHtml no es un entero
                if (esUnNumeroEntero(valorDelElementoHtml) == false) {
                    return [Math.floor(valorDelElementoHtml), "No se permieten números decimales"];
                }
                else {
                    return [valorDelElementoHtml, null];
                }
            }
        }
    }
}