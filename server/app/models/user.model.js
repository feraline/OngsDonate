var connection    = require('../connection.js');

var userModel;

exports.get = function(id, callback){
  connection.query('SELECT * FROM user WHERE id = ' + id, callback);
}
