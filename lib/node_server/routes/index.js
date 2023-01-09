const express = require("express");
const {newUser,loginUser,saveMessage,getAllMessages} = require("../controller/newUser");
const router = express.Router();

// create a new user
router.post("/signup",(req, res) => {
    newUser("em23452","qaqe","ra","ni")
})
// logging in
router.get("/login",(req,res)=>{
    loginUser("em");
})
// sender,room_id,msg,time
router.get("/saveMsg",(req,res)=>{
    saveMessage("idw4","asdww213d","hello world","time");
})
// get all messages
router.get("/getAllMsg",(req,res)=>{
    getAllMessages("idw4","${room_id}");
})

module.exports = router;
