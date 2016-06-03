/*
 * Node.js Sample Server with Restify
 * Copyright (C) 2014 - Thiago Uriel M. Garcia
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
const chalk = require('chalk');
var cluster = require('cluster');
var RSMQWorker = require( "rsmq-worker" );


var log = console.log;

if (cluster.isMaster) {
  log(chalk.yellow('Starting redisMQ'));

  var RedisSMQ = require("rsmq"),
      rsmq = new RedisSMQ( {host: "localhost", port: 6379, ns: "rsmq"} );

  log(chalk.yellow('Creating note queue...'));
  rsmq.createQueue({qname:"myqueue"}, function (err, resp) {
        if (resp===1) {
            log(chalk.green("Note queue created!"));
        }
        if(err){
            log(chalk.yellow(err));
        }
  });

  log(chalk.yellow('Server is active. Forking workers now.'));
  var cpuCount = require('os').cpus().length;
  for (var i=1; i<=cpuCount; i++) {
    var worker = new RSMQWorker( "myqueue" );
    worker.on( "message", function( msg, next ){
        // process your message
        //request API para mandar a nota
        next()
    });

    // optional error listeners
    worker.on('error', function( err, msg ){
      console.log( "ERROR", err, msg.id );
    });

    worker.on('exceeded', function( msg ){
      console.log( "EXCEEDED", msg.id );
    });

    worker.on('timeout', function( msg ){
      console.log( "TIMEOUT", msg.id, msg.rc );
    });

    worker.start();
    log(chalk.green('#Worker - '+i+' - ready to work!'));
  }
} else {
  var restify = require('restify')
    , server  = restify.createServer({name:'Node.js Sample Server', version: "1.0.0"})
    , port    = (process.env.PORT || 8088)
    , routes  = require('./app/routes.js');

  routes.applyRoutes(server);

  server.use(restify.authorizationParser());
  server.use(restify.queryParser());
  server.use(restify.bodyParser());

  server.listen(port, function() {
    log(chalk.green('Worker %s spawned for port %s.'), cluster.worker.id, port);
  });
}
