<template>
    <section class="app-travels">
        <toast v-if="loginAlert" :toastMsg="loginAlertMsg" :toastClass="loginAlertBgColor"></toast>
        <div id="bigImg" class="container-fluid w-100 p-0 m-0">
            <picture>
                <source media="(min-width: 1000px)" :srcset="bigImg.lg_url">
                <source media="(max-width:999px)" :srcset="bigImg.md_url">
                <img class="w-100" :src="bigImg.src">
            </picture>  
        </div>
        <div class="container p-0">
            <div id="navigation" class="row border-bottom m-auto pt-2">
                <div class="col-12 col-md order-2 order-md-0 d-flex pt-2 m-0 align-items-end justify-content-around justify-content-md-start" @click="changeState($event)">
                    <span class="pb-2 pb-md-0 mb-0 ml-sm-4  h-100" :class="state.tab==='hot'?'active':''" data-tab="hot">热门游记</span>
                    <span class="pb-2 pb-md-0 mb-0 ml-sm-4  h-100" :class="state.tab==='latest'?'active':''" data-tab="latest">最近发布</span>
                    <span class="pb-2 pb-md-0 mb-0 ml-sm-4 mr-0 h-100" :class="state.tab==='all'?'active':''" data-tab="all">全部游记</span>
                </div>
                <div class="co-12 col-md-auto order-0 order-md-2 text-center text-md-right">
                    <button class="btn btn-group-sm btn-warning mr-1 mb-2 mt-4 mt-md-2" type="button"><router-link to="/" class="iconfont icon-youji1">我的游记</router-link></button>
                    <button class="btn btn-group-sm btn-warning ml-1 mb-2 mt-4 mt-md-2" type="button" @click="jumpToAdd()"><a herf="javascript:;" class="iconfont icon-fabiaoyouji">发表游记</a></button>
                </div>
            </div>
            <!-- 加载travelbox组件 -->
            <TravelBox :state="state"></TravelBox>
            <div id="page-nav" class="row w-100 m-0">
                <ul class="col-12 col-md d-flex justify-content-center justify-content-md-start align-items-center mb-1 p-0" @click="changActive($event)">
                    
                    <li class="p-0 m-0" ><button class=" btn btn-sm iconfont icon-arrow_prev" href="javascript:;" data-num="prev" :disabled="state.pno==1"></button></li>
                    <li  class="p-0 m-0"  :class="activeEle==0?'active':''"><button class="btn btn-sm bg-transparent" data-num=0>{{tempNum}}</button></li>
                    <li  class="p-0 m-0"  :class="activeEle==1?'active':''"><button class="btn btn-sm bg-transparent" data-num=1>{{tempNum+1}}</button></li>
                    <li  class="p-0 m-0"  :class="activeEle==2?'active':''"><button class="btn btn-sm bg-transparent" data-num=2>{{tempNum+2}}</button></li>
                    <li  class="p-0 m-0" ><button class="btn btn-sm iconfont icon-arrow_next" href="javascript:;" data-num="next" :disabled="state.pno==pageCount"></button></li>
                    
                </ul>
                <p class="col-12 col-md-auto d-flex justify-content-center align-items-center mb-1 mr-2 p-0">
                    第<input type="text" class="text-center" v-model="inputPno">页/共<span>{{pageCount}}</span>页
                    <button type="text" class="btn btn-sm" :disabled="Number(inputPno)<=0 || Number(inputPno)>pageCount" @click="changePno($event)">确定</button>  
                </p>
            </div> 
        </div>   
    </section>
</template>
<script>
import TravelBox from "@/views/travel_box/Travel_box.vue"
import Toast from "@/components/toast.vue"
export default {
    data(){
        return {
            bigImg:{
                lg_url:"",
                md_url:"",
                src:""
            },
            tempNum:1,
            activeEle:0,
            inputPno:"",
            //传到travel_box
            state:{
                tab:"hot",
                pno:1,//用户需要显示的页码，默认为1
                pageSize:6
            },
            pageCount:0,//总页数，由travel_box传入
            loginAlert:false,
            loginAlertMsg:"请先登录 !",
            loginAlertBgColor:"bg-dark position-fixed"

        }
    },
    components:{
        TravelBox,
        Toast
    },
    watch: {
        tempNum(){
            console.log("activeEle"+this.activeEle);
            this.state.pno = Number(this.activeEle) + Number(this.tempNum);
        },
        activeEle(){
            this.state.pno = Number(this.activeEle) + Number(this.tempNum);
        },
        "state.tab"(){
           this.tempNum = 1;
            this.activeEle = 0;
        }
    },
    methods: {
        loadBigImg(){
            this.axios.get("http://127.0.0.1:3001/travels/top?num=22").then((res)=>{
                this.bigImg.lg_url = res.data.lg_url;
                this.bigImg.md_url = res.data.md_url;
                this.bigImg.src = res.data.src;
            })
        },
        loadHotTravels(){
            this.axios.get("http://127.0.0.1:3001/travels/all_travels").then((res)=>{
                // console.log(res.data);
                this.pageCount = res.data.pageCount;
            })
        },
        changeState(e){
            if(e.target.nodeName === "SPAN"){
                this.state.tab = e.target.dataset.tab;
            }    
        },
        changePno(e){
            if(parseInt(Number(this.inputPno))==this.pageCount){
                this.tempNum = this.pageCount-2;
                this.activeEle = 2;
            }else if(parseInt(Number(this.inputPno))==this.pageCount-1){
                this.tempNum = this.pageCount-2;
                this.activeEle = 1;
            }else{
                this.tempNum = parseInt(Number(this.inputPno));
                this.activeEle = 0;
            }                                  
        },        
        changActive(e){
            if(e.target.nodeName==="A" || e.target.nodeName==="BUTTON"){
                if(e.target.dataset.num==="next"){
                    if(this.activeEle==2){
                        this.tempNum++;
                    }else{
                        this.activeEle++;
                    }    
                    return;
                }
                if(e.target.dataset.num==="prev"){
                    if(this.activeEle==0){
                        this.tempNum--;
                    }else{
                        this.activeEle--;
                    }
                    return;
                }   
                this.activeEle = e.target.dataset.num;
                }
        },
        jumpToAdd(){
            if(!this.$store.state.userMsg){
                this.loginAlert = true;
                setTimeout(()=>{
                    this.loginAlert = false;
                },1000)
                return;
            }else{
                this.$router.push("/add_travel");
            }
        }
    },
    
    created() {
        this.loadBigImg();
        this.loadHotTravels();
    }
}
</script>
<style lang='scss' >
    @import '../assets/scss/travels.scss';
</style>