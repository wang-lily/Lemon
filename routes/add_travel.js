const express=require("express");
const router=express.Router();
const pool=require("../pool");

//测试: http://localhost:3001/spots/carousel
router.get("/top",(req,res)=>{
  var sql=`SELECT * FROM carousel 
    WHERE cid=?`;
  pool.query(sql,req.query.num,(err,result)=>{
    if(err) throw (err);
    res.send(result[0]);
  })
})

module.exports=router;