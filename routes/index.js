const express=require("express");
const router=express.Router();
const pool=require("../pool");

//测试: http://localhost:3001/index/carousel
router.get("/carousel",(req,res)=>{
    var list = [req.query.num1,req.query.num2,req.query.num3,req.query.num4,req.query.num5];
    console.log(list)
  var sql=`SELECT * FROM carousel 
    WHERE cid in (?,?,?,?,?)`;
  pool.query(sql,list,(err,result)=>{
    if(err) throw (err);
    res.send(result);
  })
})

module.exports=router;