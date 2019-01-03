<template>
    <div id="travel-details" class="app-travel-details position-relative">
        <div class="border-bottom">
            <div class="container">
                <div class=" d-flex justify-content-between">
                    <span>作 者: {{details.author}}</span>
                    <span>发表时间: {{new Date(details.time).toLocaleDateString()}}</span>
                </div>    
            </div>
        </div>
        <div class="container">
            <h3 class="text-center h2 p-3" style="font-weight:bold;" >{{details.title}}</h3>
            <div v-html="details.html" class="pb-5"></div>
            <div v-if="loadComments" class="border rounded">
                <div class="border-bottom pt-2">
                    <h5 class="text-buttom font-weight-bold pl-2">评 论:</h5>
                </div>
                <p class="ml-1 mr-1 mt-2 ml-sm-3 mr-sm-3 text-danger alertMsg" >{{alertMsg}}</p>
                <div class="row ml-1 mr-1 mb-1 ml-sm-3 mr-sm-3 mb-sm-3 align-items-center position-relative">
                    <textarea class="col m-1 border bg-light mt-2 p-1 p-sm-2 h50" placeholder="写下你的评论(字数在200以内)..." v-model="myComment" @focus="resetAlertMsg()"></textarea>
                    <button type="button" class="col-auto m-1 h-50 btn  btn-outline-success" @click="submitComment()">发表</button>
                    <Toast v-if="toastMsg" :toastMsg="toastMsg" :toastClass="toastClass"></Toast>
                </div>
                
                <div class="comments">
                    <div v-if="commentsTotal==0">
                        <p class="p-2 text-muted text-center floor">
                            还没有人评论哦！！
                        </p>
                    </div>
                    <div v-else v-for="(item,i) of commentsList" :key=i>
                        <p class="border-bottom pl-2 pt-1 pr-2 text-muted d-flex justify-content-between floor">
                            <span>昵称:{{item.uname || "匿名"}}</span>
                            <span>时间:{{new Date(item.time).toLocaleString()}}</span>
                        </p>
                    <p class="p-2">{{item.txt}}</p>
                    </div>
                </div>
            </div>
        </div>
        <Toast v-if="loginAlert" :toastMsg="loginAlertMsg" :toastClass="loginAlertBgcolor"></Toast>
    </div>
</template>

<script>
import $ from 'jquery';
import Toast from '@/components/toast.vue';
export default {
    data(){
        return {
            loginAlert:false,
            loginAlertMsg : "先请登录！",
            loginAlertBgcolor : "bg-dark position-fixed",
            tid:this.$route.query.tid,
            zanTotal:0,
            details:{
                title:"",
                html:"",
                time:"",
                author:""
            },
            loadComments:false,
            commentsTotal:0,
            myComment:"",
            commentsList:[],
            alertMsg:"",
            toastClass:"",
            toastMsg:""
        }
    },
    components:{
        Toast
    },
    methods: {
        loadContent(){
            this.axios.get("http://127.0.0.1:3001/travels/get_travel_details",{params:{tid:this.tid}}).then((res)=>{
                if(res.data && res.data.code==1){
                    console.log(res.data);
                    this.zanTotal = res.data.details.zan;
                    this.details.html = res.data.details.txt;
                    this.details.title = res.data.details.title;
                    this.details.time = res.data.details.Ttime;
                    this.details.author = res.data.details.uname || "匿名";
                    this.commentsTotal = res.data.comments.length;
                    this.commentsList = res.data.comments;
                    this.bus.$emit("postTid",this.tid,this.zanTotal,this.commentsTotal);
                }else{
                    console.log("服务器响应失败！")
                }   
            })
        },
        getComments(){
            this.axios.get("http://127.0.0.1:3001/travels/get_comments",{params:{tid:this.tid}}).then((res)=>{
                console.log(res.data);
            })
        },
        submitComment(){
            if(!this.$store.state.userMsg){
                this.toastMsg = "请先登录！";
                this.toastClass = "bg-dark position-absolute";
                setTimeout(()=>{
                    this.toastMsg = "";
                    this.toastClass = "";
                },1000)
                return;
            }
            if(!this.myComment.trim()){
                this.alertMsg = "您没有输入任何评论！";
                this.toastMsg = "发表失败！";
                this.toastClass = "bg-danger position-absolute";
                setTimeout(()=>{
                    this.toastMsg = "";
                    this.toastClass = "";
                },1000)
                return;
            }
            if(this.myComment.length>200){
                this.alertMsg = "您写的评论长度超过200字，请从新输入！";
                this.toastClass = "bg-danger position-absolute";
                this.toastMsg = "发表失败！";
                setTimeout(()=>{
                    this.toastMsg = "";
                    this.toastClass = "";
                },1000)
                return;
            }
            this.axios.post("http://127.0.0.1:3001/travels/add_comment",{
                txt:this.myComment,
                uid:this.$store.state.userMsg ? this.$store.state.userMsg.uid : 0,
                tid:this.tid
                }).then((res)=>{
                if(res.data.code===1){
                    this.toastClass = "bg-success position-absolute";
                    this.toastMsg = "发表成功！";
                    setTimeout(()=>{
                        this.toastMsg = "";
                        this.toastClass = "";
                    },1000);
                    this.commentsList.unshift(res.data.data);
                    this.commentsTotal++;
                    this.bus.$emit("postCommentsTotal",this.commentsTotal);
                }
            })
        },
        resetAlertMsg(){
            this.alertMsg = "";
        }
    },
    created() {
        this.loadContent();  
         
    },
    mounted() {
        //显示或者隐藏评论区
        this.bus.$on("showComments",(style)=>{
            this.loadComments = !this.loadComments;
            if(style==1){     
                window.scrollTo(0,$("#travel-details")[0].offsetHeight);
            }    
        })   
        this.bus.$on("handleShowToast",()=>{          
            console.log(123);
            this.loginAlert = true;
            setTimeout(()=>{
                this.loginAlert = false;
            },1000)
        })
    },
    destroyed() {
         this.bus.$emit("resetToTap");
         window.scrollTo(0,0);
         this.loadComments = false;
    }
}
</script>
<style>
    .app-travel-details{
        padding:65px 0;
    }
    .app-travel-details .comments .floor{
        font-size:14px; 
        background-image: linear-gradient(to bottom, rgba(255, 255, 255, 0.5) 0%, rgba(227, 248, 232, 0.5) 100%);
    }
    .app-travel-details .alertMsg{
        height: 24px;
    }
    .app-travel-details img{
        max-width: 100%;
    }
    .app-travel-details p{
        padding:0 !important;
    }
    [v-cloak] {
        display: none;
    }
</style>