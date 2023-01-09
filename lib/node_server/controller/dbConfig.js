const mysql = require("mysql2")

const creds={
    host:"localhost",
    user:"root",
    password:"qarani",
    database:"chatroom"
}

const conn = mysql.createConnection(creds)

if(conn){
    console.log("Database connection successful")
    module.exports =conn
}else{
console.log("somethimg wrong with mysql")

}