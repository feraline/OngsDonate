/**
 * Função responsável por formatar data do tipo String para o tipo Date
 * @param date -> String data com o formato dd/mm/aaaa
 * @return time -> String time fom o formato HH:MM
 * @return date -> Retorna uma data do tipo Date
 */
exports.strToDate = function(date, time){
	var year = date.split('/')[2];
	var month = parseInt(date.split('/')[1]) -1;
	var day = date.split('/')[0];
	var hour = time.split(':')[0];
	var minutes = time.split(':')[1];

	return new Date(year, month, day, hour, minutes, 0, 0);
}

/**
 * Função responsável por formatar data do tipo Date para o tipo String
 * @param date -> Obejeto Date
 * @return date -> String data com o formato dd/mm/aaaa às HH:MM:ss
 */
exports.dateToStr = function(date){
	var year = date.getFullYear();
	var month = (date.getMonth() < 10) ? "0" + date.getMonth() : date.getMonth();
	var day = (date.getDate() < 10) ? "0" + date.getDate() : date.getDate();
	var hour = (date.getHours() < 10) ? "0" + date.getHours() : date.getHours();
	var minutes = (date.getMinutes() < 10) ? "0" + date.getMinutes() : date.getMinutes();
	var seconds = (date.getSeconds() < 10) ? "0" + date.getSeconds() : date.getSeconds();

	return day + "/" + month + "/" + day + " às " + hour + ":" + minutes +  ":" + seconds;
}

exports.businessToString = function(business){
	var year = business.substring(0, 4);
	var month = business.substring(4, 6);
	var day = business.substring(6, 8);
	var hour = business.substring(8, 10);
	var minutes = business.substring(10, 12);
	var seconds = business.substring(12, 14);

	return day + "/" + month + "/" + year+ " às " + hour + ":" + minutes +  ":" + seconds;
}
