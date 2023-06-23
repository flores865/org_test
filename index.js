var http = require("http")

var port = process.env.PORT || 5000

var server = http.createServer()

server.on('connection', function(socket){
  socket.on('data', function(data) {
      console.log(data.toString());
  });
});

server.on('request', (req, res) => {
    res.on('error', (err) => {
      console.error(err);
    });

    if (req.url == '/now') {
        res.writeHead(200, { 'Content-Type': 'application/json' });
        res.write(JSON.stringify({ now: new Date() }));
        res.end();
    } else {
        res.writeHead(200, {'Content-Type': 'text/plain'});
        res.write('example page\n');
        res.end('Hello World\n');
    }

    req.socket.on('data', function(data) {
      console.log(data.toString());
    });
    req.socket.on('close', function(){
      console.log("close");
    });
});

server.listen(port)

console.log("http server listening on %d", port)
