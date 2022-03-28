

const express = require('express');
const app = express();
const port = process.env.PORT;



app.use(express.static(__dirname + "/dist/"));

app.get(/.*/,function(req,res ) {
  res.sendfile(__dirname + "/dist/index.html");
});

app.listen(port);

console.log("server started ...");

/*

const express = require('express');
const serveStatic = require("serve-static")
const path = require('path');
app = express();
app.use(serveStatic(path.join(__dirname, 'dist')));
const port = process.env.PORT || 4000;
app.listen(port);

*/