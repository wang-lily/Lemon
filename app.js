const express = require("express");
const bodyParser = require("body-parser");
//const studentRouter = require("./routes/student.js");


var app = express();
app.listen(3001);//服务器提供
console.log("服务器创建成功，端口号3001");


app.use(bodyParser.urlencoded({
	extended: false
}));
app.use(express.static("public"));
//app.use("/student", studentRouter);