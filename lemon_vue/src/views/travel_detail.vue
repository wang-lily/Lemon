<template>
    <div id="travel-details" class="app-travel-details">
        <div class="border-bottom">
            <div class="container">
                <div class=" d-flex justify-content-between">
                    <span class="ml-3" v-cloak>作 者: {{details.author}}</span>
                    <span class="mr-3" v-cloak>发表时间: {{new Date(details.time).toLocaleDateString()}}</span>
                </div>    
            </div>
        </div>
        <div class="container">
            <h3 class="text-center h2 p-3" style="font-weight:bold;" v-cloak>{{details.title}}</h3>
            <div v-html="details.html" class="pb-5"></div>
            <div class="border rounded comments">
                <div class="border-bottom pt-2">
                    <h5 class="text-buttom font-weight-bold pl-2">评 论:</h5>
                </div>
                <div class="row m-1 m-sm-3 align-items-center">
                    <textarea class="col m-1 border bg-light mt-2 p-1 p-sm-2 h50" placeholder="写下你的评论..."></textarea>
                    <button type="button" class="col-auto m-1 h-50 btn  btn-outline-success">发表</button>
                </div>
                
                <div class="comments">
                    <div>
                        <p class="border-bottom pl-2 pt-1 pr-2 text-muted d-flex justify-content-between floor">
                            <span>昵称</span>
                            <span>时间:</span>
                        </p>
                    <p class="p-2">fjdklfjdkfjdkfjdkfjdkjfdkjf kdj f</p>
                    </div>
                    <div>
                        <p class="border-bottom pl-2 pt-1 pr-2 text-muted d-flex justify-content-between floor">
                            <span>昵称</span>
                            <span>时间:</span>
                        </p>
                    <p class="p-2">fjdklfjdkfjdkfjdkfjdkjfdkjf kdj f</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
import $ from 'jquery';
export default {
    data(){
        return {
            tid:this.$route.query.tid,
            zanTotal:0,
            commentsTotal:0,
            details:{
                title:"",
                html:"",
                time:"",
                author:""
            },
            commentsList:[]
        }
    },
    methods: {
        loadContent(){
            this.axios.get("http://127.0.0.1:3001/travels/get_travel_details",{params:{tid:this.tid}}).then((res)=>{
                if(res.data && res.data.code==1){
                    this.zanTotal = res.data.details.zan;
                    this.details.html = res.data.details.txt;
                    this.details.title = res.data.details.title;
                    this.details.time = res.data.details.Ttime;
                    this.details.author = res.data.details.uname || "匿名";
                    this.commentsTotal = res.data.commentsTotal;
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
        }
    },
    created() {
        this.loadContent();   
    },
    mounted() {
        this.bus.$on("showComments",()=>{
           window.scrollTo(0,$("#travel-details")[0].offsetHeight);
        })   
    },
    destroyed() {
         this.bus.$emit("resetZan");
         window.scrollTo(0,0);
    }
}
</script>
<style>
    .app-travel-details{
        padding:65px 0;
    }
    .comments .floor{
        font-size:14px; 
        background-image: linear-gradient(to bottom, rgba(255, 255, 255, 0.5) 0%, rgba(227, 248, 232, 0.5) 100%);
    }
    
    [v-cloak] {
        display: none;
    }
</style>