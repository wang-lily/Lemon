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


  router.get("/tab",(req,res)=>{
    var sql=`SELECT t.country FROM (SELECT country,SUM(hot) sum FROM spot GROUP BY country) t ORDER BY sum DESC` ;
    pool.query(sql,(err,result)=>{
      if(err) throw (err);
      res.send(result);
    })
  })


 //分页显示功能
 router.get('/getStrategy',(req,res)=>{
  var pno = req.query.pno;          //页码
  var pageSize = req.query.pageSize;//页大小
 
  //设置默认值 1 7
  if(!pno){pno = 1}
  if(!pageSize){pageSize=5}
  //创建正则表达式验证用户输入验证
  var reg = /^[0-9]{1,3}$/; 
  //如果错出停止函数运行
  if(!reg.test(pno)){
     res.send({code:-1,msg:"页编格式不正确"});
     return;
  }
  if(!reg.test(pageSize)){
     res.send({code:-2,msg:"页大小格式不正确"});
     return;
  }
  var progress = 0;
  var obj = {code:1};

  var sql = "SELECT count(pid) AS c FROM pointer";
  pool.query(sql,(err,result)=>{
    if(err)throw err;
    var pageCount = Math.ceil(result[0].c/pageSize);
    progress+=50;
    obj.pageCount = pageCount;
    if(progress==100){
      res.send(obj);
    }
  });

  var sql =" SELECT pid,img,Ttime,tview,zan,totaltitle,subtitle FROM pointer LIMIT ?,?";
  var offset = parseInt((pno-1)*pageSize);
      pageSize = parseInt(pageSize);
  pool.query(sql,[offset,pageSize],(err,result)=>{
    if(err)throw err;
    progress+=50;
    obj.data=result;
    if(progress==100){
      res.send(obj);
    }
  })
 });

  module.exports=router;