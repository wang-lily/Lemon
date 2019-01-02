const express=require("express");
const router=express.Router();
const pool=require("../pool");

//测试: http://localhost:3001/spots/carousel
router.get("/carousel",(req,res)=>{
    var list = [];
    list.push(req.query.num1);
    list.push(req.query.num2);
    list.push(req.query.num3);
    list.push(req.query.num4);
  var sql=`SELECT * FROM carousel 
    WHERE cid=? OR cid=? OR cid=? OR cid=?`;
  pool.query(sql,list,(err,result)=>{
    if(err) throw (err);
    res.send(result);
  })
})

router.get("/allSpotsList",(req,res)=>{
  var sql = `SELECT * FROM spot ORDER BY sid`;
  pool.query(sql,(err,result)=>{
    if(err) throw (err);
    res.send(result);
  })  
})
// select season,iimg_380_220,country,spot from img i inner join spot s on i.sid=s.sid order by season

router.get("/spots01",(req,res)=>{
  // var sql = `select season,iimg_380_220,country,spot from img i inner join spot s on i.sid=s.sid order by season`;
  var sql = `select * from img i inner join spot s on i.sid=s.sid order by season`;
  pool.query(sql,(err,result)=>{
    if(err) throw (err);
    res.send(result);
  })  
})

router.get("/spots02",(req,res)=>{
  var data = {lgImgs:[],mdImgs:[]};
  var sql1 = `select * from carousel order by theme`;
  var sql2 = `select * from img i inner join spot s on i.sid=s.sid order by theme`;
  pool.query(sql1,(err,result)=>{
    if(err) throw (err);
    data.lgImgs = result;
    pool.query(sql2,(err,result)=>{
      if(err) throw (err);
    data.mdImgs = result;
      res.send(data);
    })
  }) 
})

router.get("/spots03",(req,res)=>{
  var sql = `select * from img i inner join spot s on i.sid=s.sid GROUP by click_rate order by click_rate DESC LIMIT 0,4`;
  pool.query(sql,(err,result)=>{
    if(err) throw (err);
    res.send(result);
  })  
})

module.exports=router;