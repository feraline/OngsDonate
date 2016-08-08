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

var constants 	= require('./constants.js');
var app 		    = require('./app.config.js');
var log 		    = require('./app/utils/log.js');

log.info("Servidor iniciado");

//Rota de Services
var users = require('./app/routers/users.router.js');
app.use('/users', users);

//Rota principal
app.get('/', function(request, response) {
  var json_obj = {
    message: "Servidor conectado com sucesso."
  }

  // response.status(0).json(json_obj);
  response.json(json_obj);
});
