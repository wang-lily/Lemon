// const express = require("express");
// const bodyParser = require("body-parser");
// var app = express();
// // 1.在app.js的头上定义ejs:
// // const ejs = require('ejs');
// // //定义变量
// // var tem={
// //   message:"我是中间部分"
// // };
// app.use(bodyParser.urlencoded({extended:true}))
// //挂载静态资源处理中间件,设置css或者js引用文件的静态路径
// 	.use(express.static("public"))
// //设置模板视图的目录
// // app.set("views","./public/views");
// // //设置是否启用视图编译缓存，启用将加快服务器执行效率
// // app.set("view cache",true);
// // // 2.注册html模板引擎：
// // app.engine('html',ejs.__express);
// // //设置模板引擎的格式即运用何种模板引擎
// // app.set("view engine","html");
// // //设置路由
// // app.get("/",function(req,res){
// //   res.render("index",{title:tem.message});
// // })
// 	.listen(3001);
// console.log("服务器创建成功，端口号3001");

const express = require("express");
const bodyParser = require("body-parser");
// const cors = require("cors");
var app = express();
app.listen(3001);
console.log("服务器创建成功，端口号3001");
app.use(bodyParser.urlencoded({extended:true}));
app.use(express.static(__dirname + "/public"));
// app.use(cors({
//     origin:["http://192.168.0.112:3001"],
//     credentials:true
// }))
