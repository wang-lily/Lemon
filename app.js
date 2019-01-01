const express = require("express");
const bodyParser = require("body-parser");

const cors = require("cors");
const session=require("express-session");

const spots = require("./routes/spots");
const index = require("./routes/index");
const user = require("./routes/user");
const  pics= require("./routes/pics");
const  personal= require("./routes/personal");
const  strategy= require("./routes/strategy");
const addTravel = require("./routes/add_travel");
const travels = require("./routes/travels");


var app = express();
app.listen(3001);
console.log("服务器创建成功，端口号3001");
// app.use(bodyParser.urlencoded({extended:false}));
app.use(bodyParser.json({limit:'50mb'}));
app.use(bodyParser.urlencoded({limit:'50mb',extended:true}));
app.use(express.static(__dirname + "/public"));
app.use(cors({
    origin:[
        "http://localhost:3001",
        "http://192.168.0.112:3001",
        "http://127.0.0.1:3001",
        "http://127.0.0.1:8080",
        "http://localhost:8080",
        "http://183.67.56.247:3001/",
        "http://183.67.56.247:8080/",
    ],
    credentials:true
}))
app.use(session({
    secret:"128位随机字符",
    resave:false,
    saveUninitialized:true
  }))


app.use("/index",index);
app.use("/user",user);
app.use("/pics",pics);
app.use('/personal',personal);
app.use("/spots",spots);
app.use("/strategy",strategy);
app.use("/add_travel",addTravel);
app.use("/travels",travels);
