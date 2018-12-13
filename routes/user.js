const express=require("express");
const router=express.Router();
const pool=require("../pool");

//测试: http://localhost:3001/user
router.get("/",(req,res)=>{
    var user = req.query.user;
    var sql = "";
    if(user.indexOf("@")==-1){
        sql=`SELECT * FROM user 
    WHERE phone=?`;
    }else{
        sql=`SELECT * FROM user 
    WHERE email=?`;
    }   
    pool.query(sql,[user],(err,result)=>{
        if(err) throw (err);
        if(result.length>0){
            res.send({
                code:1,
                msg:"用户已存在！"
            });
        }else{
            res.send({
                code:-1,
                msg:"用户不存在！"
            })
        }
    })
})


router.post("/register",(req,res)=>{
    console.log(req.body);
    var user = req.body.user;
    var upwd = req.body.upwd;
    var sql = ""; 
    if(user.indexOf("@")==-1){
        sql = `INSERT INTO user VALUES(DEFAULT,NULL,?,?,NULL,NULL,NULL,NULL)`;
    }else{
        sql = `INSERT INTO user VALUES(DEFAULT,NULL,?,NULL,?,NULL,NULL,NULL)`;
    }
    pool.query(sql,[user,upwd],(err,result)=>{
        if(err) throw (err);
        if(result.affectedRows>0){
            res.send({
                code:1,
                msg:"注册成功！"
            });
        }else{
            res.send({
                code:-1,
                msg:"注册失败！"
            })
        }
    })
})

module.exports=router;