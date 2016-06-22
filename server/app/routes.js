var Router = require('restify-router').Router;
var routerInstance = new  Router();
var RedisSMQ = require("rsmq"),
      rsmq = new RedisSMQ( {host: "localhost", port: 6379, ns: "rsmq"} );


// add a route like you would on a restify server instance
routerInstance.get('/hello/:name', function respond(req, res, next) {
    rsmq.sendMessage({qname:"myqueue", message: "Hello World from" + req.params.name }, function (err, resp) {
        if (resp) {
            res.send("Message sent. ID: "+ resp);
        }
    });
  next();
});

module.exports = routerInstance;