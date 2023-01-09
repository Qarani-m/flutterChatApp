const res = require("express/lib/response");
const conn = require("../controller/dbConfig")

const sqlQuery = (sql)=>{
    conn.connect( err => {
        if(err) console.log (err);
        if (!err) {
            console.log("connected")
             conn.query(sql, (err, result) => {
                if (err){
                    console.log(
                        err.code,
                        err.errno,
                        err.message
                        );
                    return
                }else{
                    console.log(result)
                    return result;
                }

            })
        }
    })
}



// save new user
const newUser = (username,userid,useremail,user_profilepic)=>{
    sqlQuery(`insert into users(user_name,user_id,user_email,user_profilepic) values('${username}','${userid}','${useremail}','${user_profilepic}');`)
}
// save messages
const saveMessage =(sender,room_id,msg,time)=>{
    sqlQuery( `insert into messages(sender_id,message,room) values('${sender}','${msg}','${room_id}');`)
}


// only one message
const getOneMessages=(user,room)=>{
    sql = `select * from messages where sender_id='${user}' and room = '${room}';`
    conn.query(sql,(err,result)=>{
    if(err) {
        throw err
    }else{
        console.log(result[result.length-1].message);
        }
    })
}

// all messages
const getAllMessages=(user,room)=>{
    sql = `select * from messages where sender_id='${user}' and room = '${room}';`
    conn.query(sql,(err,result)=>{
    if(err) {
        throw err
    }else{
        console.log(result[result.length-1].message);
        }
    })
}



const loginUser = (username)=>{
    conn.connect(async err => {
        sql1 = `select user_id from users where user_name='${username}';`
        conn.query(sql1,(err,result)=>{
            if(err)throw err;
            if(result.length<=0){
                console.log("wrong username");
                return;
            }else{
                user_id = result[0].user_id
                console.log(user_id)
                // get group info
                sql2 = `select * from room_users where user_id='${user_id}';`
                conn.query(sql2,(err,result)=>{
                    if(err){
                        console.log(
                            err.code,
                            err.errno,
                            err.message
                            );

                    }else{
                        if(result.length<=0){
                            // send no groups
                        }else{
                            console.log(result)
                            sql2 = `select * from room_users where user_id='${user_id}';`


                            for(var i = 0;i<result.length;i++){
                                console.log(result[i].id)
                                // res.send(result[i].id)
                            }
                        }


                    }
                })
            }
        })
       
    })
}




module.exports = {newUser,loginUser,saveMessage,getAllMessages}