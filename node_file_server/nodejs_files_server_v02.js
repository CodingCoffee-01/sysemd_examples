var http = require('http');
var fs = require('fs');
console.log("this node js file server is running on http://localhost:8080 ");
//create a server object:
http.createServer(function(req, res) {

  fs.readFile('demo.html', function(err, data) {
    res.writeHead(200, {'Content-Type': 'text/html'});
    res.write(data);
    return res.end();
  });  
}).listen(8080); //the server object listens on port 8080
