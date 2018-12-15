<template>
     <section class="container info pt-4 mt-5 mb-5">
        <div class="row">
            <div class="col-sm-3 border-right catalog">
                <div class="w-100">
                    <h4>个人中心</h4>
                    <ul class="pointer_nav_right mt-3 list-unstyled text-left">
                        <li class="mt-2  p-2 col-sm-12 col-5 mr-0" :class="staticSty.ind==index?'active':''"
                         v-for='(item,index) in staticSty.titleList' @click='staticSty.ind=index;staticSty.ifShow=false;'>
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
                    <p><span class="title pr-4">我的消息</span><span>资料完善度</span><b>{{progress}}%</b></p>
                    <form class="form-group">
                        <div class="unameDiv">
                            <div class="row m-2 mt-3">
                                <label for='uname' class="col-2 control-label p-0">昵称：</label>
                                <div class="col-10">
                                    <input type="text " class="form-control pl-0" id="uname" v-model='info.infoList.uname' @blur="ackUname">  
                                    <p class="tips d-none" >{{staticSty.tip}}</p>
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
                                    <input type="text" class="form-control" id="phone" v-model='info.infoList.phone'>
                                    <p class=" tips"></p>
                                </div>
                            </div>

                            <div class="row m-2 mt-2">
                                <label for='email' class="col-2 control-label p-0 col-2">邮箱：</label>
                                <div class=" col-10">
                                    <input type="text" class="form-control" id="email" v-model='info.infoList.email'>              
                                     <span class="tips"></span>
                                </div>
                            </div>

                            <div class="row m-2 mt-2 ">
                                <label for='email' class="col-2 control-label p-0">简介：</label>
                                <div class=" col-10">
                                    <textarea class="form-control text-muted" rows="6" name='hobby' id="hobby"
                                        placeholder="例：摄影师/徒步/潜水爱好者" v-model='info.infoList.profile'></textarea>         
                                         <span class="tips"></span>
                                </div>
                            </div>

                            <div class="row mt-3 mb-5 pb-5">
                                    <div class="col-12 text-center">
                                            <input type="reset" value='重置' class=" btn btn-secondary">
                                            <input type="submit" value="保存" class=" btn  btn-danger" >
                                    </div>
                            </div>

                        </div>
                    </form>
                </div>              
            </div>
            <div class="col-sm-9" v-show='staticSty.ind==1'>
                <div class="profile ">
                    <p><span class="title pr-4">我的头像</span><span>资料完善度</span><b>{{progress}}%</b></p>
                    <form class="form-group">
                        <div class="unameDiv avatarBox">
                                <img src=''>
                            <div class="row mt-3 mb-5 pb-5">
                                <input id="fileImg" accept="image/*" class="hide-input" type="file">                               
                            </div>    
                            <div class="row mt-3 mb-5 pb-5">
                                <div class="col-12 text-center">
                                    <input type="submit" value="保存" class=" btn  btn-danger" >
                                </div>
                            </div>

                        </div>
                    </form>
                </div>              
            </div>
            <div class="col-sm-9" v-show='staticSty.ind==2'>
                <div class="profile ">
                    <p><span class="title pr-4">账号安全</span><span>资料完善度</span><b>{{progress}}%</b></p>
                    <form class="form-group">
                         <div class="row m-2 mt-2">
                                <label for='password' class="col-2 control-label p-0 col-2">新密码：</label>
                                <div class="col-6 col-10">
                                    <input type="password" class="form-control" id="password">
                                    <p class=" tips"></p>
                                </div>
                            </div>

                            <div class="row m-2 mt-2">
                                <label for='askPass' class="col-2 control-label p-0 col-2">确认密码：</label>
                                <div class="col-6 col-10">
                                    <input type="password" class="form-control" id="askPass">
                                    <p class=" tips"></p>
                                </div>
                            </div>

                              <div class="row m-2 mt-2 deleteMe">
                                <small class='text-muted'>注销账户？</small>
                            </div>

                             <div class="row mt-3 mb-5 pb-5">
                                <div class="col-12 text-center">
                                   <input type="submit" value="确认修改" class=" btn  btn-danger" >
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
                      {icon:'icon-wodetouxiang',title:'我的头像'},
                      {icon:'icon-zhanghaoanquan',title:'账号安全'},
                      ], 
                      ifShow:false,
                      ind:0,
               }, 
              
               info:{
                   infoList:[]
               },
               unameAck:{},
               phoneAck:{},
               emailAck:{},
               progress:0
            }
        },
        methods:{
             getAllInfo(){
                 this.axios.get('http://127.0.0.1:3001/personal/getinfo',
                {params:{user:this.$store.state.user}}).then(res=>{
                   this.info.infoList=res.data[0];
                   console.log(this.info.infoList)
                })
             },
             ackUname(){

             },
             proProgress(){
                 var len=this.info.infoList.length-1;
                 var i=0;
                 for(var item of this.info.infoList){
                      if(item==undefined){
                          i++;
                      }
                 }
                 this.progress=(i/len).toFixed(2)*100;
             }
        },

        created() {
           this.getAllInfo();

           
        },
        mounted() {
            this. proProgress();
            
        },
        filter:{
           
        },
        watch:{
            //  progress:function(new,old){}  
        }
    }
</script>
<style >
    @import '../assets/css/personal.css';
    
</style>