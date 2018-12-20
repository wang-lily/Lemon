const express=require("express");
const router=express.Router();
const pool=require("../pool");
//http://localhost:3001/strategy/bigimg
router.get("/bigimg",(req,res)=>{
    var list = req.query.num;
    var sql=`SELECT * FROM carousel 
      WHERE cid=?`;
    pool.query(sql,list,(err,result)=>{
      if(err) throw (err);
      res.send(result);
    })
  })

  module.exports=router;