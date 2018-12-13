<template>
    <div class="d-flex justify-content-between align-items-center w-100 h-100 login">
        <div class="position-relative m-auto">
            <div class="bg-white">
                <p class="pl-4 pt-2 m-0 text-danger">
                    <small id="alert" :class="alert.show?'':'v-hide'">{{alert.msg}}&nbsp;</small>
                </p>
                <!-- 注册表单start -->
                <div id="form-register" class="row pt-0 pb-0 pl-4 pr-4 m-0 my-form" :class="status=='register'?'':'d-none'">
                    <input type="text" name="uname" id="uname-reg" class="form-control p-2 mb-2" :class="userVerifyStyle" placeholder="邮箱/手机号" v-model="user" @blur="verifyUser">
                    <input type="password" name="upwd" id="upwd-reg" class="form-control p-2 mb-2" :class="upwdVerifyStyle" placeholder="密码" v-model="upwd" @blur="verifyUpwd">
                    <input type="password" id="upwd-again" class="form-control p-2 mb-2" :class="againUpwdVerifyStyle" placeholder="确认密码" v-model="againUpwd" @blur="verifyAgainUpwd">
                    <p class="w-100 text-center m-0" >
                        <small>密码为6~14位数字、字母或下划线！</small>
                    </p>
                    <button id="register" type="botton" class="btn btn-success w-100 p-2 mt-2" @click="register" :disabled="!checked"><span class="h5">立即注册</span></button>
                    <p class="d-flex justify-content-center align-items-center m-auto p-2">
                        <label class="d-flex align-items-center m-0">
                            <input type="checkbox" v-model="checked">
                            <small class="text-muted">&nbsp;已阅读并接受</small>
                        </label>
                        <a>
                            <small class="text-info">《lemon用户协议》</small>
                        </a>
                    </p>
                </div>
                <!-- 注册表单end -->
                <!-- 登录表单start -->
                <div id="form-login" class="row pt-0 pb-4 pl-4 pr-4 m-0 my-form" :class="status=='login'?'':'d-none'">
                    <input type="text" name="uname" id="uname-login" class="form-control p-2 mb-2" placeholder="您的邮箱/手机号" v-model="user">
                    <input type="password" name="upwd" id="upwd-login" class="form-control p-2 mb-2" placeholder="您的密码" v-model="upwd">
                    <p class="w-100 text-right m-0">
                        <a href="javascript:;">
                            <small>忘记密码</small>
                        </a>
                    </p>
                    <button id="login" type="submit" class="btn btn-success w-100 p-2 mt-2"><span class="h5">登&nbsp;录</span></button>
                </div>
                <!-- 登录表单end -->
                <div class="border-bottom"></div>
                <div class="pl-4 pr-4">
                    <p class="text-muted mt-2 mb-1">
                        <small >第三方账户登录</small>
                    </p>
                    <h1 class="d-flex justify-content-center align-items-center pb-3 m-0">
                        <a class="iconfont icon-qq pl-3 pr-3 m-0" herf="#"></a>
                        <a class="iconfont icon-weixin pl-3 pr-3 m-0" herf="#"></a>
                        <a class="iconfont icon-weibo pl-3 pr-3 m-0" herf="#"></a>
                    </h1>
                </div>
            </div>
            <div class="d-flex justify-content-center pb-4 pt-2">
                <p class="m-auto pt-1 pb-1 pl-3 pr-3">
                    <small class="text-white">{{status=="login"?"还没有账号？":"已有账号？"}}</small>
                    <a href="javascript:;" @click="changeStatus"><small v-if='status==="login"'>马上注册</small><small v-else>马上登录</small></a>
                </p>
            </div>
            <p class="position-absolute w-100 text-right pr-1 pt-1">
                <a href="javascript:history.go(-1);" class="iconfont icon-guanbi text-success"></a>
            </p>
        </div>
    </div>
</template>
<script>
    export default {
        data(){
            return {
                status:"login",
                checked:false,
                alert:{
                    show:false,
                    msg:""
                },
                userVerifyStyle:"",
                upwdVerifyStyle:"",
                againUpwdVerifyStyle:"",
                userVerifyStatus:false,
                upwdVerifyStatus:false,
                againUpwdVerifyStatus:false,
                user:"",
                upwd:"",
                againUpwd:""
            }
        },
        methods:{
            changeStatus(){
                switch(this.status){
                    case "login": this.status = "register";
                        break;
                    case "register": this.status = "login";
                        break;
                    default:
                        break;
                } 
            },
            verifyUser(){
                var phoneReg = /^1[3-8]\d{9}$/;//手机号验证
                var emailReg = /^[a-zA-Z0-9_.-]+@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*\.[a-zA-Z0-9]{2,6}$/;//邮箱验证
                if(!this.user){
                    this.alert.show = true;
                    this.alert.msg = "请输入手机号或者邮箱进行注册！"
                    this.userVerifyStyle = "border-danger";
                    this.userVerifyStatus = false;
                    return;
                }
                if(!phoneReg.test(this.user) && !emailReg.test(this.user)){
                    this.alert.show = true;
                    this.alert.msg = "手机号或者邮箱格式错误！"
                    this.userVerifyStyle = "border-danger";
                    this.userVerifyStatus = false;
                    return;
                }
                this.axios.get("http://127.0.0.1:3001/user",{params:{user:this.user}}).then(res=>{
                    if(res.data.code==1){
                        this.alert.show = true;
                        this.alert.msg = "您输入的手机号或者邮箱已被使用！";
                        this.userVerifyStyle = "border-danger";
                        this.userVerifyStatus = false;
                        return;
                    }
                    if(res.data.code==-1){
                        this.alert.show = false;
                        this.alert.msg = "";
                        this.userVerifyStyle = "border-success";
                        this.userVerifyStatus = true;
                        return;
                    }
                })
            },
            verifyUpwd(){
                console.log(this.userVerifyStatus)
                if(!this.userVerifyStatus){
                    return;
                }
                var upwdReg = /^\w{6,14}$/; //密码验证
                if(!this.upwd){
                    this.alert.show = true;
                    this.alert.msg = "请设置密码！";
                    this.upwdVerifyStyle = "border-danger";
                    this.upwdVerifyStatus = false;
                    return;
                }
                if(!upwdReg.test(this.upwd)){
                    this.alert.show = true;
                    this.alert.msg = "密码为6~14位数字、字母或下划线！";
                    this.upwdVerifyStyle = "border-danger";
                    this.upwdVerifyStatus = false;
                    return;
                }
                this.alert.show = false;
                this.alert.msg = "";
                this.upwdVerifyStyle = "border-success";
                this.upwdVerifyStatus = true;
                return;
            },
            verifyAgainUpwd(){
                // console.log(this.verifyUpwd())
                if(!this.upwdVerifyStatus){
                    return;
                }
                if(!this.againUpwd){
                    this.alert.show = true;
                    this.alert.msg = "请确认密码！";
                    this.againUpwdVerifyStyle = "border-danger";
                    this.againUpwdVerifyStatus = false;
                    return;
                }
                if(this.againUpwd!==this.upwd){
                    this.alert.show = true;
                    this.alert.msg = "您设置的密码和确认密码不一致！";
                    this.upwdVerifyStyle = "border-danger";
                    this.againUpwdVerifyStyle = "border-danger";
                    this.againUpwdVerifyStatus = false;
                    return;
                }
                this.alert.show = false;
                this.alert.msg = "";
                this.upwdVerifyStyle = "border-success";
                this.againUpwdVerifyStyle = "border-success";
                this.againUpwdVerifyStatus = true;
                return;
            },
            register(){
                if(this.userVerifyStatus && this.upwdVerifyStatus && this.againUpwdVerifyStatus && this.checked){
                    this.axios.post("http://127.0.0.1:3001/user/register",`user=${this.user}&upwd=${this.upwd}`).then(res=>{
                        console.log(res);
                    })    
                }
            },
            login(){
                
            }
            
        }
    }
</script>
<style>
    @import '../assets/css/login_register.css';
</style>