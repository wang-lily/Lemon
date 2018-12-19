<template>
     <section class="container info pt-4 mt-5 mb-5">
        <div class="row">
            <div class="col-sm-3 border-right catalog">
                <div class="w-100">
                    <h4>个人中心</h4>
                    <ul class="pointer_nav_right mt-3 list-unstyled text-left">
                        <li class="mt-2  p-2 col-sm-12 col-5 mr-0" :class="staticSty.ind==index?'active':''"
                         v-for='(item,index) in staticSty.titleList' @click='tabChange(index)'>
                            <i class="iconfont pr-2" :class='item.icon'></i><b>{{item.title}}</b>
                        </li>
                    </ul>
                     <div class="mt-2 p-2 col-sm-12 col-5 mr-0 text-left">
                            <p class="publicTraval" @click="staticSty.ifShow=staticSty.ifShow?false:true;staticSty.ind=0;"><i class="iconfont icon-youji1 pr-1"></i> <b>我的游记</b></p>   
                            <ul v-show="staticSty.ifShow" class="ml-2  publicList">
                                <li><a href="#">风筝有风，海...</a></li>
                                <li><a href="#">风筝有风，海豚有海。</a></li>
                                <li><a href="#">风筝有风，海...</a></li>
                            </ul>
                        </div>
                </div>
            </div>
            <div class="col-sm-9" v-show='staticSty.ind==0'>
                <div class="profile ">
          
                    <p><span class="title pr-4">我的信息</span><span>资料完善度</span><b>{{comProgress}}%</b></p>
                    <form class="form-group">
                        <div class="unameDiv">
                            <div class="row m-2 mt-3">
                                <label for='uname' class="col-2 control-label p-0">昵称：</label>
                                <div class="col-10">
                                    <input type="text " class="form-control pl-0" id="uname" v-model='info.infoList.uname' @blur="ackUname">  
                                    <p class="tips" v-show='unameAck.flag' >{{unameAck.tip}}</p>
                                </div>
                            </div>
                            <div class="row m-2 mt-2">
                                <label class="col-2 control-label p-0 col-2">性别：</label>
                                <div class="col-6 col-10">
                                    <input type="radio" id="male" name='sex' value='1' v-model='info.infoList.sex'><label for='male'  >男</label>
                                    <input type="radio" id="female" name='sex' value='0' v-model='info.infoList.sex'> <label for='female' >女</label>
                                    <input type="radio" id="secret" name='sex' value='-1' v-model='info.infoList.sex'> <label for='secret'>保密</label>
                                </div>
                            </div>                         
                            <div class="row m-2 mt-2">
                                <label for='phone' class="col-2 control-label p-0 col-2">手机号:</label>
                                <div class="col-6 col-10">
                                    <input type="text" class="form-control" id="phone" v-model='info.infoList.phone' @blur='ackPhone'>
                                      <p class="tips" v-show='phoneAck.flag' >{{phoneAck.tip}}</p>
                                </div>
                            </div>

                            <div class="row m-2 mt-2">
                                <label for='email' class="col-2 control-label p-0 col-2">邮箱：</label>
                                <div class=" col-10">
                                    <input type="text" class="form-control" id="email" v-model='info.infoList.email' @blur='ackEmail'>              
                                    <p class="tips" v-show='emailAck.flag' >{{emailAck.tip}}</p>
                                </div>
                            </div>

                            <div class="row m-2 mt-2 ">
                                <label for='email' class="col-2 control-label p-0">简介：</label>
                                <div class=" col-10">
                                    <textarea class="form-control text-muted" rows="6" name='hobby' id="hobby"
                                        placeholder="例：摄影师/徒步/潜水爱好者" v-model='info.infoList.profile' @blur='ackProfile'></textarea>         
                                         <p class="tips" v-show='profileAck.flag' >{{profileAck.tip}}</p>
                                </div>
                            </div>

                            <div class="row mt-3 mb-5 pb-5">
                                    <div class="col-12 text-center">
                                            <p  class=" btn  btn-danger"
                                             @click='submitInfo' 
                                             :disabled="(unameAck.flag||phoneAck.flag||emailAck.flag||profileAck.flag)">保存</p>
                                             <p class="tips" v-show='subAck.flag' >{{subAck.tip}}</p>
                                    </div>
                            </div>

                        </div>
                    </form>
                </div>              
            </div>
          
            <div class="col-sm-9" v-show='staticSty.ind==1'>
                <div class="profile ">
                    <p><span class="title pr-4">账号安全</span><span>资料完善度</span><b>{{comProgress}}%</b></p>
                    <form class="form-group">
                         <div class="row m-2 mt-2">
                                <label for='password' class="col-2 control-label p-0 col-2">新密码：</label>
                                <div class="col-6 col-10">
                                    <input type="password" class="form-control" id="password" @blur='ackUpwd' v-model='newPwd' >
                                    <p class="tips" v-show='upwdAck.flag' >{{upwdAck.tip}}</p>
                                </div>
                            </div>

                            <div class="row m-2 mt-2">
                                <label for='askPass' class="col-2 control-label p-0 col-2">确认密码：</label>
                                <div class="col-6 col-10">
                                    <input type="password" class="form-control" 
                                    id="askPass" v-model='againPwd'  @blur='ackUpwdAgain'>
                                    <p class="tips" v-show='upwdAgainAck.flag' >{{upwdAgainAck.tip}}</p>
                                </div>
                            </div>

                              <div class="row m-2 mt-2 deleteMe" @mouseover='deleteUser=true' @mouseleave='deleteUser=false'>
                                <small class='text-muted '>注销账户？</small><small class='text-muted' v-show='deleteUser' >确定</small>
                            </div>

                             <div class="row mt-3 mb-5 pb-5">
                                <div class="col-12 text-center">
                                   <button  class=" btn btn-danger"  
                                   :disabled="(upwdAck.flag||upwdAgainAck.flag)" @click="modifyPwd">确认修改</button>
                                     <p class="tips" v-show='pwdSubAck.flag' >{{pwdSubAck.tip}}</p>
                                </div>
                            </div>
                    </form>
                </div>              
            </div>
        </div>
    </section>
</template>

<script>
    export default{
        data(){
            return{
              staticSty:{ 
                  titleList:[
                      {icon:'icon-wodexinxi',title:'我的信息'},
                      {icon:'icon-zhanghaoanquan',title:'账号安全'},
                      ], 
                      ifShow:false,
                      ind:0,
               }, 
               info:{
                   infoList:{uname:'',sex:'',phone:'',email:'',profile:'',upwd:''},
                   originInfoList:{uname:'',sex:'',phone:'',email:'',profile:'',upwd:''},
                   count:0
               },
               unameAck:{tip:'',flag:false},
               phoneAck:{tip:'',flag:false,},
               emailAck:{tip:'',flag:false},
               profileAck:{tip:'',flag:false},
               //提交按钮
               subAck:{tip:'',flag:false},
                upwdAck:{tip:'',flag:false},
                upwdAgainAck:{tip:'',flag:false},
               pwdSubAck:{tip:'',flag:false
               },
               deleteUser:false,
               ackAllFlag:false,  //当为true时才可提交信息
            //    progress:0,   //信息修改完成度
               newPwd:'',
               againPwd:'',
               pwdAckAllFlag:false  ////当为true时才可提交密码
            }
        },
         created() {
            this.getInfo();
        },
        computed:{
                comProgress: function(){
                     var i=0,j=0;
                     for(var item in this.info.infoList){
                         i++;
                         if(this.info.infoList[item]!==''){
                             j++;
                         }
                     }
                     return Math.floor(((j-2)/i)*100);
                 }
             },
        methods:{
            tabChange(index){
                this.staticSty.ind=index;
                this.staticSty.ifShow=false;
                this.unameAck.flag=false;
                this.phoneAck.flag=false;
                this.emailAck.flag=false;
                this.profileAck.flag=false;
                this.subAck.flag=false;
                this.upwdAck.flag=false;
                this.upwdAgainAck.flag=false;      
                this.ackAllFlag=false; 
                this. pwdAckAllFlag=false;
               
            },
           //基本信息修改
           getInfo(){
                 this.axios.get("http://127.0.0.1:3001/personal/getinfo",
                {params:{uid:this.$store.state.userMsg.uid}}).then(res=>{
                //记录原始值看是否被改变    
                this.info.originInfoList.uname=res.data[0].uname;
                this.info.originInfoList.phone=res.data[0].phone;
                this.info.originInfoList.email=res.data[0].email;
                this.info.originInfoList.sex=res.data[0].sex;
                this.info.originInfoList.profile=res.data[0].profile;
                this.info.infoList=res.data[0];
                })
           },

        //  ackEvent(reg,cur,tip,flag,text1,text2,text3){
        //           if(!cur){
        //              tip=text1;
        //              flag=true;
        //              this.ackAllFlag=false; 
        //              console.log(1)
        //            }else if(reg.test(cur)){
        //                tip=text2;
        //                flag=true;
        //                this.ackAllFlag=true; 
        //                 console.log(2)
        //           }else{
        //              tip=text3;
        //              flag=true;
        //              this.ackAllFlag=true;
        //              console.log(this.unameAck.tip);
        //               console.log(3)
        //           }
        //      },
        //      ackUname(){
        //         var text=['昵称不能为空！','昵称可用！','昵称为4到16位（字母，数字，下划线，减号）！'];
        //         this.ackEvent(/^[a-zA-Z0-9_-]{4,16}$/,this.info.infoList.uname,
        //            this.unameAck.tip,this.unameAck.flag,text[0],text[1],text[2]);  
        //      },
             ackUname(){
                   this.subAck.flag = false;
                   var reg=/^[a-zA-Z0-9_-]{4,16}$/;
                   if(!this.info.infoList.uname){
                      this.unameAck.tip='昵称不能为空！';
                      this.unameAck.flag=true;
                      this.ackAllFlag=false;
                   }else if(reg.test(this.info.infoList.uname)){
                       this.unameAck.flag=false;
                       this.ackAllFlag=true;
                  }else{
                      this.unameAck.tip='昵称为4到16位（字母，数字，下划线，减号）！';
                      this.unameAck.flag=true;
                      this.ackAllFlag=true;
                  }

                     if((!this.unameAck.flag)&&(!(this.info.infoList.uname=== this.info.originInfoList.uname))){
                        //查询昵称是否被占用
                        this.axios.get("http://127.0.0.1:3001/personal/ackuname",
                        {params:{uname:this.info.infoList.uname}}).then(res=>{
                                if(res.data.code==1){
                                    this.unameAck.tip=res.data.msg;
                                    this.unameAck.flag=true;
                                    this.ackAllFlag=false;
                                }
                                if(res.data.code==-1){
                                    this.unameAck.tip='';
                                    this.unameAck.flag=false;
                                    this.ackAllFlag=true;
                                }
                        })
                    }  
             },
              ackPhone(){
                  this.subAck.flag = false;
                   var reg=/^1[3-8]\d{9}$/;
                   if(!this.info.infoList.phone){
                      this.phoneAck.tip='手机号不能为空！';
                      this.phoneAck.flag=true;
                      this.ackAllFlag=false;
                   }else if(reg.test(this.info.infoList.phone)){
                    //    this.phoneAck.tip='手机号格式正确！';
                       this.phoneAck.flag=false;
                       this.ackAllFlag=true;
                  }else{
                      this.phoneAck.tip='请输入正确的手机号格式！';
                      this.phoneAck.flag=true;
                      this.ackAllFlag=true;
                  }
                  if(!this.phoneAck.flag&&(!(this.info.infoList.phone=== this.info.originInfoList.phone))){
                       //查询手机是否被占用
                        this.axios.get("http://127.0.0.1:3001/personal/ackphone",
                        {params:{phone:this.info.infoList.phone}}).then(res=>{
                                if(res.data.code==1){
                                    this.phoneAck.tip=res.data.msg;
                                    this.phoneAck.flag=true;
                                    this.ackAllFlag=false;
                                }
                        })
                  }
                  
             },
             ackEmail(){
                 this.subAck.flag = false;
                   var reg=/^[a-zA-Z0-9_.-]+@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*\.[a-zA-Z0-9]{2,6}$/;
                   if(!this.info.infoList.email){
                      this.emailAck.tip='邮箱不能为空！';
                      this.emailAck.flag=true;
                      this.ackAllFlag=false;
                   }else if(reg.test(this.info.infoList.email)){
                    //    this.emailAck.tip='邮箱格式正确！';
                       this.emailAck.flag=false;
                       this.ackAllFlag=true;
                  }else{
                      this.emailAck.tip='请输入正确的邮箱格式！';
                      this.emailAck.flag=true;
                      this.ackAllFlag=true;
                  }
                    if(!this.emailAck.flag&&(!(this.info.infoList.email=== this.info.originInfoList.email))){ 
                        //查询邮箱是否被占用
                        this.axios.get("http://127.0.0.1:3001/personal/ackemail",
                        {params:{email:this.info.infoList.email}}).then(res=>{
                                if(res.data.code==1){
                                    this.emailAck.tip=res.data.msg;
                                    this.emailAck.flag=true;
                                    this.ackAllFlag=false;
                                }
                        })
                   }
             },
             ackProfile(){
                 this.subAck.flag = false;
                   var len=this.info.infoList.profile.length?this.info.infoList.profile.length:0;
                   if(len>200){
                      this.profileAck.tip='个人简历字数请保持在200以内哦！';
                      this.profileAck.flag=true;
                      this.ackAllFlag=false;
                   }
             },
            
             submitInfo(){  
                //  console.log(this.ackAllFlag)
                //  console.log(this.info.infoList)
                 if(this.ackAllFlag){
                      this.axios({
                          method:'post',
                          url:"http://127.0.0.1:3001/personal/submitInfo",
                          data:{
                               uid:this.$store.state.userMsg.uid,
                               uname:this.info.infoList.uname,
                               phone:this.info.infoList.phone,
                               sex:this.info.infoList.sex,
                               email:this.info.infoList.email,
                               profile:this.info.infoList.profile
                          }
                      }).then(res=>{
                            if(res.data.code===1){
                                this.subAck.flag = true;
                                this.subAck.tip = res.data.msg;
                                var obj={user:this.info.infoList.uname,uid:this.$store.state.userMsg.uid}
                                this.$store.commit("signin",obj);
                            }else{
                                this.subAck.flag = true;
                                this.subAck.tip = res.data.msg;
                            }
                        })  
                }
             },

             //修改密码
             ackUpwd(){
                 console.log(this.newPwd)
                   var reg=/^\w{6,14}$/;
                   if(reg.test(this.newPwd)){
                       this.upwdAck.flag=false;
                       this.pwdAckAllFlag=true;
                  }else{
                      this.upwdAck.tip='密码为6~14位数字、字母或下划线！';
                      this.upwdAck.flag=true;
                      this.pwdAckAllFlag=false;
                  }              
             },
             ackUpwdAgain(){
                if(!(this.againPwd===this.newPwd)) {
                     this.upwdAgainAck.tip='两次密码请保持一致!';     
                     this.upwdAgainAck.flag=true;
                     this.pwdAckAllFlag=false;
                }else{
                     this.upwdAgainAck.flag=false;
                     this.pwdAckAllFlag=true;
                }
             },
             modifyPwd(){
                 console.log(this.newPwd)
                  if(this.pwdAckAllFlag){
                      this.axios({
                          method:'post',
                          url:"http://127.0.0.1:3001/personal/modifyPwd",
                          data:{
                               uid:this.$store.state.userMsg.uid,
                               upwd:this.newPwd,
                          }
                      }).then(res=>{
                            if(res.data.code===1){
                                this.pwdSubAck.flag = true;
                                this.pwdSubAck.tip = res.data.msg; 
                                // this.$store.commit("signout"); 
                                 this.$router.push('/index');
                                // this.axios.get("http://127.0.0.1:3001/user/signout");
                            }else{
                                this.pwdSubAck.flag = true;
                                this.pwdSubAck.tip = res.data.msg;
                            }  
                           
                        })  
                }
             },
             

      }
    }
</script>
<style >
    @import '../assets/css/personal.css';
    
</style>