var md5 = require('md5');

exports.md5 = function(value){
  var date = new Date();
  var precrypt = Number(date) + value;
  return md5(precrypt);
}
