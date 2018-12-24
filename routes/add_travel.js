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

// //功能:上传头像
// //1:加载所需模块 express;fs;multer
// const express = require("express");
// //fs fileSystem 文件系统模块
// //操作文件:创建/删除/移动文件
// const fs = require("fs");
// const multer = require("multer");
// //2:创建express对象监听端口3000
// var app = express();
// app.use(express.static(__dirname+"/public"));
// app.use(express.static(__dirname+"/upload"));
// app.listen(3002);
// console.log(3002);
// //3:创建multer对象指定上传文件目录
// //指定上传文件目录
// var upload = multer({dest:"upload/"});
// //4:创建处理上传请求 /upload 上传单个文件
// //upload.single() 一次上传一张图片
// //mypic           指定上传文件表单 name="mypic"
// app.post("/upload",upload.single("mypic"),
// (req,res)=>{
//  //5:获取上传文件大小  拒绝超过2MB文件 (字节)
//  var size = req.file.size/1000/1000;
//  if(size > 2){
//   res.send({code:-1,msg:"上传图片过大 超过2MB"});
//   return;
//  }
//  //6:获取上传文件类型  图片
//  //image/gif image/png image/jpg  text/css 
//  var type = req.file.mimetype;
//  var i2 = type.indexOf("image");
//  if(i2==-1){
//    res.send({code:-2,msg:"上传只能是图片"});
//    return;
//  }
//  //7:创建新文件名 1.jpg  191283874393.jpg
//  var src = req.file.originalname;
//  var fTime = new Date().getTime();
//  var fRand = Math.floor(Math.random()*9999);
//  var i3 = src.lastIndexOf(".");
//  var suff = src.substring(i3,src.length);
//  var des = "./upload/"+fTime+fRand+suff;
//  console.log(des);
//  //8:将临时文件移动upload目录下
//  fs.renameSync(req.file.path,des);
//  //9:返回上传成功信息
//  res.send({
//    code:1,
//    msg:"图片上传成功",
//    url:des
//   });
// });

module.exports=router;