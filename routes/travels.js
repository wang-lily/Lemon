const express=require("express");
const router=express.Router();
const pool=require("../pool");

//测试: http://127.0.0.1:3001/travels/get_travel_details

//-------------------------------------------- 获得页面top大图---start-----------------------------------------------------------
router.get("/top",(req,res)=>{
    var sql=`SELECT * FROM carousel 
      WHERE cid=?`;
    pool.query(sql,req.query.num,(err,result)=>{
      if(err) throw (err);
      res.send(result[0]);
    })
  })
  //-------------------------------------------- 获得页面top大图---end-----------------------------------------------------------





// ----------------------------全部游记-----start----------------------------------------------
//功能二:游记分页显示
router.get("/all_travels",(req,res)=>{
    //1:获取参数
    var tab = req.query.tab;
    var pno = req.query.pno;
    var pageSize = req.query.pageSize;
    //2:设置默认值 1 6
    if(!pno){pno = 1}
    if(!pageSize){pageSize=6}
    //3:创建正则表达式验证用户输入验证
    var reg = /^[0-9]{1,3}$/;
    //4:如果错出停止函数运行
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
    //5:创建sql1 查询总记录数   严格区分大小写
    var sql = "SELECT count(tid) AS c FROM travel";
    pool.query(sql,(err,result)=>{
      if(err)throw err;
      var pageCount = Math.ceil(result[0].c/pageSize);
      progress+=50;
      obj.pageCount = pageCount;
      if(progress==100){
        res.send(obj);
      }
    });
    //6:创建sql2 查询当前页内容 严格区分大小写
    if(tab==="hot"){
      var sql =`select tid,uname,Ttime,describle,headerImg,title,tview,zan from user i inner join travel s on i.uid=s.uid ORDER BY zan DESC LIMIT ?,?`; 
    }else if(tab==="latest"){
      var sql =`select tid,uname,Ttime,describle,headerImg,title,tview,zan from user i inner join travel s on i.uid=s.uid ORDER BY Ttime DESC LIMIT ?,?`; 
    }else if(tab==="all"){
      var sql =`select tid,uname,Ttime,describle,headerImg,title,tview,zan from user i inner join travel s on i.uid=s.uid ORDER BY tid LIMIT ?,?`; 
    }
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
    //7:返回结果
   }); 

// -------------------------------全部游记-- -----end-----------------------------------------


//-------------获取某个游记详细信息和作者--start----------------------
router.get("/get_travel_details",(req,res)=>{
    var tid = req.query.tid;
    var obj = {code:1};
    var progress = 0;
    var sql1 = `select tid,uname,phone,email,Ttime,describle,headerImg,spot,title,tview,txt,zan from user i inner join travel s on i.uid=s.uid WHERE tid=?`;
    pool.query(sql1,tid,(err,result)=>{
      if(err) throw (err);
      if(result.length>0){
        progress += 50;
        obj.details = result[0];
      }
      if(progress==100){
        res.send(obj);
      }
    }) 
    var sql2 = `select uname,txt,time from comments c inner join user u on c.uid=u.uid  where tid=? order by cid desc`;
    pool.query(sql2,tid,(err,result)=>{
      if(err) throw (err);
        progress += 50;
        obj.comments = result;
      if(progress==100){
        res.send(obj);
      }
    })
})
//-------------获取某个游记详细信息和作者--end----------------------

//-------------获取某个游记是否被用户赞过--start----------------------
router.get("/get_zan",(req,res)=>{
  var uid = parseInt(req.query.uid);
  var tid = parseInt(req.query.tid);
  var sql = `select * from zan where uid=? and tid=?`;
  pool.query(sql,[uid,tid],(err,result)=>{
    if(err) throw (err);
    if(result.length>0){
      res.send({
        code:1,
        msg:"用户已经赞过此游记！"
      })
    }else{
      res.send({
        code:-1,
        msg:"用户没有赞过此游记！"
      })
    }
  })
})
//-------------获取某个游记是否被用户赞过-end----------------------

// ----------------------更改数据库中的赞的数量--start----------------
router.post("/changZan",(req,res)=>{
  var deltaZan = req.body.params.deltaZan;
  var uid = req.body.params.uid;
  var tid = req.body.params.tid;
  if(deltaZan==-1){
    var sql1 = "delete from zan where uid=? and tid=?";
    pool.query(sql1,[uid,tid],(err,result)=>{
      if(err) throw err;
      if(result.affectedRows>0){
        var sql2 = "update travel set zan=zan-1 where tid=?";
        pool.query(sql2,tid,(err,result)=>{
          if(result.affectedRows>0){
            res.send({
              code:1,
              msg:"成功取消用户点赞！"
            })
          }else{
            res.send({
              code:-1,
              msg:"取消用户点赞失败！"
            })
          }
        })
      }else{
        res.send({
          code:-1,
          msg:"取消用户点赞失败！"
        })
      }
    })  
  }else if(deltaZan==1){
    var sql1 = "insert into zan set uid=?,tid=?";
    pool.query(sql1,[uid,tid],(err,result)=>{
      if(err) throw err;
      if(result.affectedRows>0){
        var sql2 = "update travel set zan=zan+1 where tid=?";
        pool.query(sql2,tid,(err,result)=>{
          if(err) throw err;
          if(result.affectedRows>0){
            res.send({
              code:1,
              msg:"成功添加用户点赞！"
            })
          }else{
            res.send({
              code:-1,
              msg:"添加用户点赞失败！"
            })
          }
        })
      }else{
        res.send({
          code:-1,
          msg:"取消用户点赞失败！"
        })
      }
    })
  }
})
// ----------------------更改数据库中的赞的数量--end----------------

// ----------------------添加评论--start----------------
router.post("/add_comment",(req,res)=>{
  var txt = req.body.txt;
  var uid = parseInt(req.body.uid);
  var tid = parseInt(req.body.tid);
  var time = new Date().getTime();
  var obj = {code:1,data:{},msg:"成功添加评论!"};
  var progress = 0;
  var sql1 = `insert into comments set txt=?,uid=?,tid=?,time=?`;
  pool.query(sql1,[txt,uid,tid,time],(err,result)=>{
    if(err) throw err;
    if(result.affectedRows>0){
      obj.data.txt = txt;
      obj.data.time = time;
      progress += 50;
      if(progress == 100){
        res.send(obj);
      }
    }
  });
  var sql2 = `select uname from user where uid=?`;
  pool.query(sql2,uid,(err,result)=>{
    if(err) throw (err);
    if(result.length>0){
      obj.data.uname = result[0].uname;
      progress += 50;
      if(progress == 100){
        res.send(obj);
      }
    }
  })
})
// ----------------------添加评论--end----------------
module.exports=router;