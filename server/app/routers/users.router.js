var express 			= require('express');
var router 				= express.Router();
var validator 		= require('validator');
var userModel     = require('../models/user.model.js');
var crypto        = require('../utils/security.js');
var log 		      = require('../utils/log.js');

// Resgata dados do usuário
router.get('/', function(request, response) {
  var id = 1;
  userModel.get(id, function(err, rows, fields) {
    if (err) throw err;
    var data = [];

    rows.forEach(function(value, index, ar){
      data.push(value);
    });

    var json_obj = data;
    response.json(json_obj);
  });
});

// Registra novo usuário
router.post('/', function(request, response) {
  var name        = validator.trim(validator.escape(request.body.name));
  var email       = validator.trim(validator.escape(request.body.email));
  var password    = validator.trim(validator.escape(request.body.password));
  var repassword  = validator.trim(validator.escape(request.body.repassword));
  var params = {'name': name, 'email': email, 'password': password};

  userModel.insert(params, function(err, rows, fields) {
    var json_obj = {
      message: "Você está tentando registrar um usuário."
    }

    response.json(json_obj);
  });

});

// Edita um usuário existente
router.put('/', function(request, response) {
  var id          = validator.trim(validator.escape(request.body.id));
  var name        = validator.trim(validator.escape(request.body.name));
  var email       = validator.trim(validator.escape(request.body.email));
  var password    = validator.trim(validator.escape(request.body.password));
  var repassword  = validator.trim(validator.escape(request.body.repassword));

  var json_obj = {
    message: "Você está tentando editar um usuário."
  }

  response.json(json_obj);
});

// Remove um usuário
router.delete('/', function(request, response) {
  var id = validator.trim(request.body.id);

  var json_obj = {
    message: "Você está tentando remover um usuário."
  }

  response.json(json_obj);
});

module.exports = router;
