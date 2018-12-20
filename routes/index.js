const express=require("express");
const router=express.Router();
const pool=require("../pool");

//测试: http://localhost:3001/index/carousel
router.get("/carousel",(req,res)=>{
  var list = [req.query.num1,req.query.num2,req.query.num3,req.query.num4,req.query.num5];
  var sql=`SELECT * FROM carousel 
    WHERE cid in (?,?,?,?,?)`;
  pool.query(sql,list,(err,result)=>{
    if(err) throw (err);
    res.send(result);
  })
})

//测试: http://localhost:3001/index/tab
router.get('/tab',(req,res)=>{
    var sql= `SELECT *FROM spot s,img i WHERE s.sid=i.iid ORDER BY hot DESC LIMIT 0,6`;
    pool.query(sql,(err,result)=>{
      if(err) throw (err);
      res.send(result);
    })
})

router.get('/guide',(req,res)=>{
  var sql= `select click_rate,iimg_170_240,country,spot from img i inner join spot s on i.sid=s.sid GROUP by click_rate order by click_rate DESC LIMIT 0,6`;
  pool.query(sql,(err,result)=>{
    if(err) throw (err);
    res.send(result);
  })
})
module.exports=router;