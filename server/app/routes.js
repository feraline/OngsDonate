var Router = require('restify-router').Router;
var routerInstance = new  Router();
var RSMQWorker = require( "rsmq-worker" );


// add a route like you would on a restify server instance
routerInstance.get('/hello/:name', function respond(req, res, next) {
  res.send('hello ' + req.params.name);
  next();
});

routerInstance.post('/enviarNota', function respond(req, res, next) {
  var notaModel = req.body.nota;
  if(notaModel.cpf){
    res.send('Nota com CPF, invalido');
  }


    //...

  new RSMQWorker( "myqueue" ).sendMessage(notaModel)

  next();
});


module.exports = routerInstance;