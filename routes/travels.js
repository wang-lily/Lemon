const express=require("express");
const router=express.Router();
const pool=require("../pool");

//测试: http://localhost:3001/travels/get_travel_details

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
//功能二:新闻分页显示
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
      var sql =`select uname,Ttime,describle,headerImg,title,tview,zan from user i inner join travel s on i.uid=s.uid ORDER BY zan DESC LIMIT ?,?`; 
    }else if(tab==="latest"){
      var sql =`select uname,Ttime,describle,headerImg,title,tview,zan from user i inner join travel s on i.uid=s.uid ORDER BY Ttime DESC LIMIT ?,?`; 
    }else if(tab==="all"){
      var sql =`select uname,Ttime,describle,headerImg,title,tview,zan from user i inner join travel s on i.uid=s.uid ORDER BY tid LIMIT ?,?`; 
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


//获取单个游记详细信息和作者
router.get("/get_travel_details",(req,res)=>{
    var tid = req.query.tid;
    var sql = `select uname,phone,email,Ttime,describle,headerImg,spot,title,tview,txt,zan from user i inner join travel s on i.uid=s.uid WHERE tid=?`;
    pool.query(sql,tid,(err,result)=>{
      if(err) throw (err);
      res.send(result[0]);
    }) 
})

module.exports=router;