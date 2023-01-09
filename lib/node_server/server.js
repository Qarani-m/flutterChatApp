const server = require('http').createServer()
const io = require('socket.io')(server)
const express = require("express")
const app =express()
const mysql = require("mysql2")


const routes = require("./routes/index")

app.use("/",routes)



var server_port = process.env.PORT || 3010;
app.listen(server_port, function (err) {
  if (err) throw err
  console.log('Listening on port %d', server_port);
});
