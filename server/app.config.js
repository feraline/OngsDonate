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

// app.listen(5000); //port
app.use(allowCors);
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({
	extended: true
}));


app.set('port', (process.env.PORT || 5000));

app.listen(app.get('port'), function() {
  console.log('Node app is running on port', app.get('port'));
});
