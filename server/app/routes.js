var Router = require('restify-router').Router;
var routerInstance = new  Router();

function respond(req, res, next) {
  res.send('hello ' + req.params.name);
  next();
}

// add a route like you would on a restify server instance
routerInstance.get('/hello/:name', respond);

module.exports = routerInstance;