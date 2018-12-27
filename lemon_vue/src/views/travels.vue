<template>
    <section>
    <div id="bigImg" class="container-fluid w-100 p-0 m-0">
        <picture>
            <source media="(min-width: 1000px)" :srcset="bigImg.lg_url">
            <source media="(max-width:999px)" :srcset="bigImg.md_url">
            <img class="w-100" :src="bigImg.src">
        </picture>  
    </div>
    <div class="container p-0">
        <div id="navigation" class="row border-bottom m-auto pt-2">
            <div class="col-12 col-md order-2 order-md-0 d-flex pt-2 m-0 align-items-end justify-content-around justify-content-md-start">
                <span class="pb-2 pb-md-0 mb-0 ml-sm-4  h-100" :class="state==='hot'?'active':''" @click="jumpToHot()">热门游记</span>
                <span class="pb-2 pb-md-0 mb-0 ml-sm-4  h-100" :class="state==='latest'?'active':''" @click="jumpToLatest()">最近发布</span>
                <span class="pb-2 pb-md-0 mb-0 ml-sm-4 mr-0 h-100" :class="state==='all'?'active':''"  @click="jumpToAll()">全部游记</span>
            </div>
            <div class="co-12 col-md-auto order-0 order-md-2 text-center text-md-right">
                <button class="btn btn-group-sm btn-warning mr-1 mb-2 mt-4 mt-md-2" type="button"><router-link to="/" class="iconfont icon-youji1">我的游记</router-link></button>
                <button class="btn btn-group-sm btn-warning ml-1 mb-2 mt-4 mt-md-2" type="button"><router-link to="/add_travel" class="iconfont icon-fabiaoyouji">发表游记</router-link></button>
            </div>
        </div>
        <router-view></router-view>
        <div id="page-nav" class="row w-100 m-0">
            <ul class="col-12 col-md d-flex justify-content-center justify-content-md-start align-items-center mb-1 p-0">
                <li><a href="#">首页</a></li>
                <li><a class="iconfont icon-arrow_prev" href="#"></a></li>
                <li class="active"><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a class="iconfont icon-arrow_next" href="#"></a></li>
                <li><a href="#">尾页</a></li>
            </ul>
            <p class="col-12 col-md-auto d-flex justify-content-center align-items-center mb-1 mr-2 p-0">
                第<input type="number" class="text-center" >页/共<span>{{pageCount}}</span>页
                <button class="btn btn-sm">确定</button>  
            </p>
        </div> 
    </div>   
</section>
</template>
<script>
export default {
    data(){
        return {
            bigImg:{
                lg_url:"",
                md_url:"",
                src:""
            },
            state:"hot",
            pageCount:0
            // list:[]
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
        jumpToHot(){
            this.state = "hot";
            this.$router.push("/hot_travel");
        },
        jumpToLatest(){
            this.state = "latest";
            this.$router.push("/latest_travel");
        },
        jumpToAll(){
            this.state = "all";
            this.$router.push("/all_travel");
        }
    },
    created() {
        this.loadBigImg();
        this.loadHotTravels();
    }
}
</script>
<style>
    @import '../assets/css/travels.css';
</style>