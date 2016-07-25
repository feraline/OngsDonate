var express 	   = require('express');
var app 		     = module.exports = express();
var bodyParser 	 = require('body-parser');

//CORs
var allowCors = function(request, response, next){
	request.header('Access-Control-Allow-Origin', '*');
	request.header('Access-Control-Allow-Methods', 'GET,PUT,POST,DELETE');
	request.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
	request.header('Access-Control-Allow-Credentials', 'true');

	next();
}

app.listen(9000); //port
app.use(allowCors);
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({
	extended: true
}));
