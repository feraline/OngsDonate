var md5 = require('md5');

exports.md5 = function(value, timestamp){
  var date = new Date();
  var precrypt = (timestamp) ? Number(date) + value : value;
  return md5(precrypt);
}
