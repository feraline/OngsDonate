exports.bind = function(query, field, value){
	var bindQuery = query.replace(field, value);

	return bindQuery;
}
