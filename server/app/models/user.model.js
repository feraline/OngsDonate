var connection    = require('../connection.js');

var userModel;

exports.get = function(id, callback) {
  connection.query('SELECT * FROM users WHERE id = ' + id, callback);
}
exports.insert = function(params, callback) {
  connection.query('INSERT INTO users (name, email, password) VALUES ("' + params.name + '","'+ params.email + '","' + params.password + '")', callback);
}
exports.update = function(params, callback) {
  connection.query('UPDATE users SET name="' + params.name + '", email="'+ params.email + '", password="' + params.password + '" WHERE id=' + params.id, callback);
}