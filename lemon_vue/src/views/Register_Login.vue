<template>
    <div class="d-flex justify-content-between align-items-center w-100 h-100 login">
        <div class="position-relative m-auto">
            <div class="bg-white">
                <p v-show="status==='register'" class="pl-4 pt-2 m-0 text-danger">
                     <!-- :class="registerForm.alert.show?'':'v-hide'" -->
                    <small id="registerForm-alert">{{registerForm.alert.msg.user?registerForm.alert.msg.user:registerForm.alert.msg.upwd?registerForm.alert.msg.upwd:registerForm.alert.msg.againUpwd?registerForm.alert.msg.againUpwd:""}}&nbsp;</small>
                </p>
                <!-- 注册表单start -->
                <div id="form-register" class="row pt-0 pb-0 pl-4 pr-4 m-0 my-form" :class="status=='register'?'':'d-none'">
                    <input type="text" name="uname" id="uname-reg" class="form-control p-2 mb-2" :class="registerForm.userVerifyStyle" placeholder="邮箱/手机号" v-model="registerForm.user" @blur="verifyUser">
                    <input type="password" name="upwd" id="upwd-reg" class="form-control p-2 mb-2" :class="registerForm.upwdVerifyStyle" placeholder="密码" v-model="registerForm.upwd" @blur="verifyUpwd"> 
                    <input type="password" id="upwd-again" class="form-control p-2 mb-2" :class="registerForm.againUpwdVerifyStyle" placeholder="确认密码" v-model="registerForm.againUpwd" @blur="verifyAgainUpwd">
                    <p class="w-100 text-center m-0" >
                        <small>密码为6~14位数字、字母或下划线！</small>
                    </p>
                    <button id="register" type="botton" class="btn btn-success w-100 p-2 mt-2" @click="register" :disabled="!registerForm.checked"><span class="h5">立即注册</span></button>
                    <p class="d-flex justify-content-center align-items-center m-auto p-2">
                        <label class="d-flex align-items-center m-0">
                            <input type="checkbox" v-model="registerForm.checked">
                            <small class="text-muted">&nbsp;已阅读并接受</small>
                        </label>
                        <a>
                            <small class="text-info">《lemon用户协议》</small>
                        </a>
                    </p>
                </div>
                <!-- 注册表单end -->
                <!-- 登录表单start -->
                <p v-show="status==='login'" class="pl-4 pt-2 m-0" :class="loginForm.alert.style">
                    <small id="alert" :class="loginForm.alert.show?'':'v-hide'">{{loginForm.alert.msg}}&nbsp;</small>
                </p>
                <div id="form-login" class="row pt-0 pb-4 pl-4 pr-4 m-0 my-form" :class="status=='login'?'':'d-none'">
                    <input type="text" name="uname" id="uname-login" class="form-control p-2 mb-2" placeholder="您的邮箱/手机号" v-model="loginForm.user">
                    <input type="password" name="upwd" id="upwd-login" class="form-control p-2 mb-2" placeholder="您的密码" v-model="loginForm.upwd">
                    <p class="w-100 text-right m-0">
                        <a href="javascript:;">
                            <small>忘记密码</small>
                        </a>
                    </p>
                    <button id="login" class="btn btn-success w-100 p-2 mt-2" @click="login"><span class="h5">登&nbsp;录</span></button>
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
                registerForm:{
                    checked:false,
                    alert:{
                        show:false,
                        msg:{
                            user:"",
                            upwd:"",
                            againUpwd:""
                        }
                    },
                    user:"",
                    upwd:"",
                    againUpwd:"",
                    userVerifyStyle:"",
                    upwdVerifyStyle:"",
                    againUpwdVerifyStyle:"",
                    verifyStatus:false
                },
                loginForm:{
                    alert:{
                        show:false,
                        style:"",
                        msg:""
                    },
                    user:"",
                    upwd:""
                }
            }
        },
        watch:{
           'registerForm.upwd':function(){
               this.registerForm.againUpwd = "";
               this.registerForm.againUpwdVerifyStyle = "";
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
            // --------------------------------registerForm---start--------------------------------------------------
            verifyUser(){
                var phoneReg = /^1[3-8]\d{9}$/;//手机号验证
                var emailReg = /^[a-zA-Z0-9_.-]+@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*\.[a-zA-Z0-9]{2,6}$/;//邮箱验证
                if(!this.registerForm.user){
                    this.registerForm.alert.msg.user = "请输入手机号或者邮箱进行注册！"
                    this.registerForm.alert.show = true;
                    this.registerForm.userVerifyStyle = "border-danger";
                    return;
                }
                if(!phoneReg.test(this.registerForm.user) && !emailReg.test(this.registerForm.user)){
                    this.registerForm.alert.msg.user = "手机号或者邮箱格式错误！"
                    this.registerForm.alert.show = true;
                    this.registerForm.userVerifyStyle = "border-danger";
                    return;
                }
                this.axios.get("http://127.0.0.1:3001/user",{params:{user:this.registerForm.user}}).then(res=>{
                    if(res.data.code==1){
                        this.registerForm.alert.msg.user = "您输入的手机号或者邮箱已被使用！";
                        this.registerForm.alert.show = true;
                        this.registerForm.userVerifyStyle = "border-danger";
                        return;
                        
                    }
                    if(res.data.code==-1){
                        this.registerForm.alert.msg.user = "";
                        this.registerForm.alert.show = false;
                        this.registerForm.userVerifyStyle = "border-success";
                        return;
                    }
                })
            },
            verifyUpwd(){
                var upwdReg = /^\w{6,14}$/; //密码验证
                if(!this.registerForm.upwd){
                    this.registerForm.alert.msg.upwd = "请设置密码！";
                    this.registerForm.alert.show = true;
                    this.registerForm.upwdVerifyStyle = "border-danger";
                    return;
                }
                if(!upwdReg.test(this.registerForm.upwd)){
                    this.registerForm.alert.show = true;
                    this.registerForm.alert.msg.upwd = "密码为6~14位数字、字母或下划线！";
                    this.registerForm.upwdVerifyStyle = "border-danger";
                    return;
                }
                this.registerForm.alert.show = false;
                this.registerForm.alert.msg.upwd = "";
                this.registerForm.upwdVerifyStyle = "border-success";
                return;
            },
            verifyAgainUpwd(){
                if(!this.registerForm.againUpwd){
                    this.registerForm.alert.show = true;
                    this.registerForm.alert.msg.againUpwd = "请确认密码！";
                    this.registerForm.againUpwdVerifyStyle = "border-danger";
                    return;
                }
                if(this.registerForm.againUpwd!==this.registerForm.upwd){
                    this.registerForm.alert.show = true;
                    this.registerForm.alert.msg.againUpwd = "您设置的密码和确认密码不一致！";
                    this.registerForm.upwdVerifyStyle = "border-danger";
                    this.registerForm.againUpwdVerifyStyle = "border-danger";
                    return;
                }
                this.registerForm.alert.show = false;
                this.registerForm.alert.msg.againUpwd = "";
                this.registerForm.upwdVerifyStyle = "border-success";
                this.registerForm.againUpwdVerifyStyle = "border-success";
                return;
            },
            register(){
                for(var key in this.registerForm.alert.msg){
                    if(this.registerForm.alert.msg[key]){
                        console.log(this.registerForm.alert.msg[key]);
                        return;
                    }
                }
                if(this.registerForm.userVerifyStyle == "border-success" && this.registerForm.upwdVerifyStyle == "border-success" && this.registerForm.againUpwdVerifyStyle == "border-success" && this.registerForm.checked){
                    this.axios.post("http://127.0.0.1:3001/user/register",`user=${this.registerForm.user}&upwd=${this.registerForm.upwd}`).then(res=>{
                        if(res.data.code===1){
                            this.loginForm.alert.show = true;
                            this.loginForm.alert.style = "text-info";
                            this.loginForm.alert.msg = "注册成功，请登录！";
                            this.status="login";
                            
                            this.registerForm.checked=false;                                
                            this.registerForm.alert.show=false;                                   
                            this.registerForm.alert.msg.user="";
                            this.registerForm.alert.msg.upwd="";
                            this.registerForm.alert.msg.againUpwd="";      
                            this.registerForm.user="";
                            this.registerForm.upwd="";
                            this.registerForm.againUpwd="";
                            this.registerForm.userVerifyStyle="";
                            this.registerForm.upwdVerifyStyle="";
                            this.registerForm.againUpwdVerifyStyle="";
                            this.registerForm.verifyStatus=false;
                        }else{
                            console.log(res);
                        }
                    })    
                }
            },
            // ------------------------------------registerForm---end---------------------------------------------------------------------------
            // -----------------------------------------------------------------------------------------------------------------------------------
            // ------------------------------------loginForm---start---------------------------------------------------------------------------
            login(){
                // console.log(this.loginForm);
                var phoneReg = /^1[3-8]\d{9}$/;//手机号验证
                var emailReg = /^[a-zA-Z0-9_.-]+@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*\.[a-zA-Z0-9]{2,6}$/;//邮箱验证
                if(!this.loginForm.user){
                    this.loginForm.alert.show = true;
                    this.loginForm.alert.style = "text-danger";
                    this.loginForm.alert.msg = "请输入手机号或者邮箱进行登录！";
                    return;
                }
                if(!phoneReg.test(this.loginForm.user) && !emailReg.test(this.loginForm.user)){
                    this.loginForm.alert.show = true;
                    this.loginForm.alert.style = "text-danger";
                    this.loginForm.alert.msg = "手机号或者邮箱格式错误！";
                    return;
                }
                if(!this.loginForm.upwd){
                    this.loginForm.alert.show = true;
                    this.loginForm.alert.style = "text-danger";
                    this.loginForm.alert.msg = "请输入密码！";
                    return;
                }
                this.axios.post("http://127.0.0.1:3001/user/login",`user=${this.loginForm.user}&upwd=${this.loginForm.upwd}`).then(res=>{
                    if(res.data){
                        if(res.data.code===-1){
                        this.loginForm.alert.show = true;
                        this.loginForm.alert.style = "text-danger";
                        this.loginForm.alert.msg = "登录账号或密码错误，请确认后再登录";
                        return;
                        }
                        if(res.data.code===1){
                            //登录成功
                            this.$store.commit("signin",res.data.userMsg);
                            this.loginForm.alert.show = false;
                            this.loginForm.alert.style = "";
                            this.loginForm.alert.msg = "";
                            history.go(-1);
                        }
                    }else{
                        console.log(res);
                    }
                    
                })

            }
            
        }
        
    }
</script>
<style>
    @import '../assets/css/login_register.css';
</style>