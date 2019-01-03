<template>
      <!-- 回到顶部 -->
        <div class="footerBox">
            <ul>
                <li class="toTop" @click="changeCommentsStyle()">
                    <i class="iconfont icon-shouqi"></i>
                </li>
                <li v-show="show" class="zan" @click="handleZan($event)">
                    <i class="iconfont icon-love" :class="(zan.style==-1)?'text-muted':'text-pink'"></i>
                    <span>{{zan.total}}</span>
                </li>
                <li v-show="show" class="comment"  @click="handleComments($event)">
                    <i class="iconfont icon-pinglun font-weight-bold" :class="(comments.style==-1)?'text-muted':'text-info'"></i>
                    <span>{{comments.total}}</span>
                </li>
                <li>
                    <i class="iconfont icon-fenxiang1"></i>
                </li>
            </ul>
        </div>
</template>
<script>
import $ from 'jquery'
import {toTop} from '../../src/assets/js/index.js'
    export default {
        data(){
            return {
                tid:0,
                sid:0,
                show:false,
               zan:{ 
                   total:0,
                   style:-1//-1为"text-muted"，1为"text-pink"       
               },
               comments:{
                   total:0,
                   style:-1//-1为"text-muted"，1为"text-info" 
               }
            }
        },
        methods:{   
            //验证用户是否已经赞过，id为tid或者sid
            verifyZanStatus(id){
                if(id==0){
                    return;
                }
                if(!this.$store.state.userMsg){
                    this.zan.style=-1;
                    return;
                }
                var uid = this.$store.state.userMsg.uid;
                this.axios.get("http://127.0.0.1:3001/travels/get_zan",{params:{uid:uid,tid:id}}).then((res)=>{
                    if(res.data.code==1){
                        this.zan.style=1;
                    }else{
                        this.zan.style=-1;
                    }
                })
            },
            // 上传赞
            postZan(params){
                this.axios.post("http://127.0.0.1:3001/travels/changZan",{params:params}).then((res)=>{
                    if(res.data.code==-1){
                        this.zan.style *= -1;
                        this.zan.total += this.zan.style;
                    }     
                })
            },
            //更改赞的状态
            handleZan(e){
                e.preventDefault();
                if(!this.$store.state.userMsg){
                    // alert("请先登录才可以点赞哦！");
                    this.bus.$emit("handleShowToast");
                    return;
                }
                this.zan.style *= -1;
                this.zan.total += this.zan.style;
                var deltaZan = this.zan.style;
                if(this.tid!==0){
                    this.postZan({
                        deltaZan:deltaZan,
                        uid:this.$store.state.userMsg.uid,
                        tid:this.tid
                    })
                    return;
                }
                if(this.sid!==0){
                    this.postZan({
                        deltaZan:deltaZan,
                        uid:this.$store.state.userMsg.uid,
                        sid:this.sid
                    })
                    return;
                }
            },
            handleComments(e){
                e.preventDefault();
                this.comments.style *= -1;
            },
            changeCommentsStyle(){
                if(this.show && this.comments.style==1){
                    this.comments.style *= -1;
                }
            }
        },
        watch: {
            tid:function(tid){
                this.verifyZanStatus(tid);
            },
            "comments.style":function(style){
                this.bus.$emit("showComments",style);
            }
        },
        created() {  
                 
        },
        mounted() {
            toTop();   
            this.bus.$on("postTid",(tid,zanTotal,commentsTotal)=>{
                this.tid = tid;  
                this.zan.total = zanTotal;
                this.comments.total = commentsTotal;
                this.show = true;
            })
            this.bus.$on("resetToTap",()=>{
                this.show=false;
                this.tid=0;
                this.sid=0;
                this.zan.total=0;
                this.zan.style=-1;//-1为"text-muted"，1为"text-pink"
                this.comments.style=-1;//-1为"text-muted"，1为"text-info"
                console.log(this.comments.style);
            })
            this.bus.$on("postCommentsTotal",(commentsTotal)=>{
                this.comments.total = commentsTotal;
            })
            
        }
        
    }
</script>
<style>
    /* toTop */
.footerBox{
    background: #fff;
    position: fixed;
    bottom: 1.4rem;
    right:1.4rem;
    z-index: 99;
}
.footerBox li{
    display: block;
    width: 4rem;
    height:4rem;
    text-align: center;
    line-height:4rem;
    background: #fff;
    border: 1px solid #b4b4b4;
}
.footerBox li:first-child{
    display: none;
    border-bottom: none;
}
.footerBox li:nth-child(2),.footerBox li:nth-child(3){
    border-bottom: none;
}
.footerBox li.zan,.footerBox li.comment{
    line-height: 1;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
}
.footerBox li>i.text-pink{
    color:#db0033b5;
}
.footerBox li:hover{
    background: rgba(0, 0, 0, .1);
}

 @media screen and (max-width:375px){
    .footerBox li{
        display: block;
        width: 1.8rem;
        height:1.8rem;
        text-align: center;
        line-height:2rem;
        background: #fff;
        border: 1px solid #b4b4b4;
    } 
    .footerBox li.zan>span, .footerBox li.comment>span{
        font-size:8px;
        color: #7c7a7a;
    }
}

@media screen and (min-width:375px) and (max-width:768px){
    .footerBox li{
        display: block;
        width: 2.2rem;
        height:2.2rem;
        text-align: center;
        line-height:2rem;
        background: #fff;
        border: 1px solid #b4b4b4;
    }
    .footerBox li.zan>span{
        font-size:0.8rem;
        color: #7c7a7a;
    }
}
</style>