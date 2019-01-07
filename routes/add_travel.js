const express=require("express");
const router=express.Router();
const pool=require("../pool");
const fs=require("fs");
const multer=require("multer");

//测试: http://localhost:3001/add_travel/add_video

// -------------------------------------单个video文件上传--start-------------------------------------------------
//3:创建multer对象指定上传文件目录
//指定上传文件目录
var upload = multer({dest:"public/upload/"});
//4:创建处理上传请求 /upload 上传单个文件
//upload.single() 一次上传一张图片
//mypic           指定上传文件表单 name="mypic"
router.post("/upload_video",upload.single("fileVideo"),
(req,res)=>{
  console.log(req);
 //5:获取上传文件大小  拒绝超过20MB文件 (字节)
 var size = req.file.size/1000/1000;
 if(size > 20){
  res.send({code:-1,msg:"上传视频过大 超过20MB"});
  return;
 }
 //6:获取上传文件类型  视频
 //image/gif image/png image/jpg  text/css 
 var type = req.file.mimetype;
 var i2 = type.indexOf("video");
 if(i2==-1){
   res.send({code:-2,msg:"上传只能是视频"});
   return;
 }
 //7:创建新文件名 1.jpg  191283874393.jpg
 var src = req.file.originalname;
 var fTime = new Date().getTime();
 var fRand = Math.floor(Math.random()*9999);
 var i3 = src.lastIndexOf(".");
 var suff = src.substring(i3,src.length);
 var des = "./public/upload/"+fTime+fRand+suff;
 var url = "http://23z20z4973.iask.in:50346/upload/"+fTime+fRand+suff;
 //8:将临时文件移动upload目录下
 fs.renameSync(req.file.path,des);
 //9:返回上传成功信息
 res.send({
   code:1,
   msg:"视频上传成功",
   url:url
  });
});
// -------------------------------------------单个video文件上传--end--------------------------------------------------------------

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

//-----------------------------------------------base64格式上传图片---start------------------------------------------------------
router.post("/add_img",(req,res)=>{
  var data = req.body.img;
  var imgName = Date.now() + ".png";
  var path = 'public/upload/'+ imgName;//相对路径
  var url = "http://23z20z4973.iask.in:50346/upload/" + imgName;//绝对路径
  var base64 = data.replace(/^data:image\/\w+;base64,/, "");//去掉图片base64码前面部分data:image/png;base64
  var dataBuffer = new Buffer(base64, 'base64'); //把base64码转成buffer对象，
  fs.writeFile(path,dataBuffer,function(err){//用fs写入文件
      if(err){
          console.log(err);
      }else{
        res.send({
          code:1,
          msg:"图片上传成功",
          url:url
        });
      }
  }) 
})
//-----------------------------------------------base64格式上传图片---end------------------------------------------------------

//-------------------------------------------------------单个图片文件上传-----start-------------------------------------
router.post("/upload_img",upload.single("fileImg"),
(req,res)=>{
 //5:获取上传文件大小  拒绝超过20MB文件 (字节)
 var size = req.file.size/1000/1000;
 if(size > 20){
  res.send({code:-1,msg:"上传图片过大 超过20MB"});
  return;
 }
 //6:获取上传文件类型  视频
 //image/gif image/png image/jpg  text/css 
 var type = req.file.mimetype;
 var i2 = type.indexOf("image");
 if(i2==-1){
   res.send({code:-2,msg:"上传只能是图片"});
   return;
 }
 //7:创建新文件名 1.jpg  191283874393.jpg
 var src = req.file.originalname;
 var fTime = new Date().getTime();
 var fRand = Math.floor(Math.random()*9999);
 var i3 = src.lastIndexOf(".");
 var suff = src.substring(i3,src.length);
 var des = "./public/upload/"+fTime+fRand+suff;
 var url = "http://23z20z4973.iask.in:50346/upload/"+fTime+fRand+suff;
 //8:将临时文件移动upload目录下
 fs.renameSync(req.file.path,des);
 //9:返回上传成功信息
 res.send({
   code:1,
   msg:"图片上传成功",
   url:url
  });
});
//-------------------------------------------------------单个图片文件上传-----end-------------------------------------


//-------------------------------------------------------提交游记-----start-------------------------------------
router.post("/submit_text",(req,res)=>{
  // var data = req.body;
  var uid = req.body.uid;
  var spot = req.body.spot;
  var title = req.body.title; //字符串 游记标题
  var headerImg = req.body.headerImg; //字符串url 游记头图
  var desc = req.body.desc; //字符串 游记描述
  var text = req.body.text;//字符串 游记主体html片段
  var time = new Date().getTime();
  var sql = `INSERT INTO travel VALUES(DEFAULT,?,?,?,?,?,?,?,123,456,NULL)`
  pool.query(sql,[uid,spot,title,headerImg,desc,text,time,],(err,result)=>{
    if(err) throw (err);
        if(result.affectedRows>0){
            res.send({
                code:1,
                msg:"游记发表成功！"
            });
        }else{
            res.send({
                code:-1,
                msg:"游记发表失败！"
            })
        }
  })
})
//-------------------------------------------------------提交游记-----end-------------------------------------


module.exports=router;