const express=require("express");
const router=express.Router();
const pool=require("../pool");

//测试: http://localhost:3001/personal/getinfo
//获得个人信息
// router.get('/getinfo',(req,res)=>{
//     var uid = req.query.uid;
//     var sql=`SELECT uid,uname,phone,sex,email,profile,vid FROM user 
//     WHERE uid=?`;
//     pool.query(sql,uid,(err,result)=>{
//         if(err) throw (err);
//         res.send(result);
//     })
// });

router.get('/getinfo',(req,res)=>{
    var uid = req.query.uid;
    console.log(uid)
    var sql=`SELECT * FROM user 
        WHERE uid=?`;
        pool.query(sql,uid,(err,result)=>{
            if(err) throw err;
            res.send(result);
        })
})

//信息格式验证
router.get('/ackuname',(req,res)=>{
    var uname = req.query.uname;
    var sql=`SELECT uid FROM user 
    WHERE uname=?`;
    pool.query(sql,uname,(err,result)=>{
        if(err) throw (err);
        if(result.length>0){
            res.send({
                code:1,
                msg:"昵称已被占用！"
            });
        }else{
            res.send({
                code:-1,
                msg:"昵称可用！"
            });
        }
       
    })
})

router.get('/ackphone',(req,res)=>{
    var phone = req.query.phone;
    var sql=`SELECT uid FROM user 
    WHERE phone=?`;
    pool.query(sql,phone,(err,result)=>{
        if(err) throw (err);
        if(result.length>0){
            res.send({
                code:1,
                msg:"手机号已被占用！"
            });
        }
    })
})

router.get('/ackemail',(req,res)=>{
    var email = req.query.email;
    var sql=`SELECT uid FROM user 
    WHERE email=?`;
    pool.query(sql,email,(err,result)=>{
        if(err) throw (err);
        if(result.length>0){
            res.send({
                code:1,
                msg:"邮箱已被占用！"
            });
        }
       
    })
})

//信息修改提交
router.post('/submitInfo',(req,res)=>{
    var _uid = req.body.uid,
    _uname = req.body.uname,
    _phone = req.body.phone,
    _sex = req.body.sex,
    _email = req.body.email,
    _profile = req.body.profile;
    console.log(_uid,_uname,_phone,_sex,_email,_profile)
    var sql=`UPDATE user SET uname=?,phone=?,sex=?,email=?,profile=?
    WHERE uid=?`;
    pool.query(sql,[_uname,_phone,_sex,_email,_profile,_uid],(err,result)=>{
        if(err) throw (err);
        if(result.affectedRows>0){
            res.send({
                code:1,
                msg:"修改成功！"
            });
        }else{
            res.send({
                code:-1,
                msg:"修改失败！"
            })
        }
       
    })
})
module.exports=router;