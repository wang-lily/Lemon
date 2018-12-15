const express=require("express");
const router=express.Router();
const pool=require("../pool");

//测试: http://localhost:3001/personal/getinfo
//个人中心
router.get('/getinfo',(req,res)=>{
    var user = req.query.user;
    var sql=`SELECT uname,phone,sex,email,profile,vid FROM user 
    WHERE phone=?`;
    pool.query(sql,user,(err,result)=>{
        if(err) throw (err);
        res.send(result);
    })
})
module.exports=router;