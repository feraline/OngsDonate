/**
 * Função responsável por criar as constantes
 * @params name -> Key da constante
 * @params value -> Texto da constante
 */
function define(name, value) {
    Object.defineProperty(exports, name, {
        value:      value,
        enumerable: true
    });
}

define("MESSAGE_SERVER_CONNECTED", "Servidor conectado e funcionando");
