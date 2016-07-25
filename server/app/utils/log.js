var format 	= require('./format.js');
var fs 		= require('fs');

var types = {
	message: './logs/message.log',
	error: './logs/error.log',
}
/**
 * Função responsável por criar logs do tipo INFO
 * @param message -> mensagem a ser salva no arquivo de log
 */
exports.info = function(message){
	var date = now();
	write(date + " [INFO] > " + message, false);
}

/**
 * Função responsável por criar logs do tipo ERROR
 * @param message -> mensagem a ser salva no arquivo de log
 */
exports.error = function(message){
	var date = now();
	write(date + " [ERROR] > " + message, 'error');
}

/**
 * Função responsável por criar logs do tipo SUCCESS
 * @param message -> mensagem a ser salva no arquivo de log
 */
exports.success = function(message){
	var date = now();
	write(date + " [SUCCESS] > " + message, false);
}

/**
 * Função responsável retornar a data/hora atual
 * @return date -> Retorna uma data do tipo String com o fromato dd/mm/aaaa às HH:MM:ss
 */
function now(){
	return format.dateToStr(new Date());
}

/**
 * Função responsável por escrever o arquivo de log
 * @param message -> mensagem a ser salva no arquivo de log
 * @param type -> Pode ser false ou String e determina o arquivo que o log será salvo
 */
function write(message, type){
	fs.mkdir('logs', function(error){
		if(error === null) {
			console.log('Diretório criado com sucesso!');
		}
	});

	var messageRead = "";

	var file = (!type) ? types.message : types.error;

	fs.readFile(file, function (error, data) {
		if (!error) {
  			messageRead = data.toString();
		}

  		var text = message + '\n' + messageRead;

  		fs.writeFileSync(file, text, 'utf8', function (error) {
			if (error) throw error;
		});
	});
}
