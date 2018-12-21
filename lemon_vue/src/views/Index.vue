<template>
<section>  
       <!-- 轮播 -->
       <div class="container-fluid pr-0 pl-0 mr-0">
          <div class="row carouselBox border position-relative mr-0 ml-0"> 
                <div class="col-sm-12 imgLg p-0">
                    <div class="box" :class="carousel.ind==index?'first':''"  v-for="(item,index) in carousel.carouselList">
                        <picture>
                            <source media="(min-width: 999px)" :srcset="item.lg_url">
                            <source media="(max-width:1000px)" :srcset="item.md_url">
                            <img class="w-100" :src="item.src">
                        </picture>
                        <div class="position-absolute">
                            <h4>{{item.day}}<span>/{{item.years}}</span>  </h4>
                            <p >{{item.tip}}</p>
                        </div>
                    </div> 
                </div> 

                 <div class="imgMd position-absolute w-40">
                    <ul class="d-flex flex-column justify-content-center">
                        <li  v-for="(item,index) in carousel.carouselList" :class="carousel.ind==index?'cuur':''" @mousemove="carousel.ind=index"><img :src="item.sm_url" class="li_item w-100 mb-1" /></li>
                    </ul>
                </div>

                <div class="position-absolute link">
                    <router-link to="/add_travel" class="pt-1 pb-1 ml-1"> <i class="iconfont icon-dianping"></i>写游记</router-link>
                    <router-link to='/pics' class="pt-1 pb-1  ml-1">历历在目</i></router-link> 
                </div> 
            </div>
       </div>

       <!-- 目的地 -->
        <div class="destination">
                <div class="col-12 text-center pt-5">
                        <span class="pop_title">首页推荐</span>
                    </div>
            <div class="container ">
                <ul class="row mt-2 mb-3 " id='tab_menu'>
                    <li class=" col-3 text-center text_tab" v-for="(item,index) in tab.barList" :class="tab.ind==index?'selected':''"  @click="tab.ind=index">{{item}}</li>
                </ul>

                <!-- 内容部分 -->
                <div class="container tab_box mb-2">
                    <div class="ind" :class="tab.ind==0?'':'hide'">
                        <div class="row">
                            <div v-for="item in tab.imgList"  class="col-lg-3 col-md-3 col-sm-6 col-6 bordered mb-3 ">
                                <div class="card ">
                                    <div class="card-head">
                                        <img :src="item.iimg_380_220" alt="" class="w-100 ">
                                    </div>
                                    <div class="card-body pb-0">
                                        <div class="d-flex justify-content-between align-items-center flex-wrap">
                                            <span>{{item.country}}
                                                <span class="pl-1 pr-1">|</span>{{item.spot}}</span>
                                            <span class="flex-end">
                                                <div class="btn btn-primary btn-sm  mr-1 p-0"><small>游记</small></div>
                                                <div class="btn btn-info btn-sm p-0"><small>指南</small></div>
                                            </span>
                                        </div>
                                        <p class="d-flex justify-content-between align-items-center flex-wrap mt-2">
                                            <span class="text-muted">热度</span>
                                            <span class="flex-end">
                                                <i class="iconfont icon-xingxing1" v-for="i in item.hot"></i>
                                            </span>
                                           <!-- <small>热度 <i class="iconfont icon-xingxing1" v-for="i in item.hot"></i></small> -->
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                   
                    <div v-for="i in 3" class="ind" :class="tab.ind==i?'':'hide'">
                        <div class="text-center">
                            <img src="../assets/background/loading.gif" alt=""> 
                        </div>
                    </div>
                </div>
                <div class="btn btn-light p-2 bordered w-100">
                    <router-link class="text-center" to="/Spots"> 查看全部目的地&gt;</router-link> 
                </div>
            </div>
        </div>

        <!-- 人气指南 -->
        <div class="popGuide">
            <div class="container">
                <div class="row">
                    <div class="col-12 text-center p-4">
                        <span class="pop_title">人气指南</span>
                        <a href='#' class="ml-1">更多&gt;</a>
                    </div>
                    <div class="col-lg-2 col-md-3 col-sm-6 col-6 bordered mb-2" v-for="item in  guide.imgList">
                        <div class="card ">
                            <div class="card-head">
                               <img :src="item.iimg_170_240" alt="" class="w-100"> 
                            </div>
                            <div class="card-body pl-0 ml-1 pt-0 pb-0">
                                <p class="mb-0">{{item.country}}</p>
                                <span class="views text-muted">浏览量
                                    <b>{{item.click_rate}}</b>次</span>
                            </div>
                        </div>
                    </div>
                </div>
                </div>
            </div>
        </div>

        <!-- 精品游记 -->
        <div class="popTravels">
            <div class="container">
                <div class="row">
                    <div class="col-12 text-center p-4">
                        <span class="pop_title">精品游记</span>
                        <a href='#' class="ml-1">更多&gt;</a>
                    </div>
                    <div class="col-lg-3 col-md-3 col-sm-6 bordered mb-5">
                        <div class="card">
                            <div class="card-head">
                                <!-- <img src="img/270-165/Singapore07.png" alt="" class="w-100"> -->
                            </div>
                            <div class="card-body  ml-1  pb-1  ">
                                <p class="mb-0">
                                    <h6 class="travel_title">
                                        <a href="#">最后一个暑假，我们来到了hhh</a>
                                    </h6>
                                </p>
                                <p class="mb-0 travel_title text_muted">
                                    <i class="iconfont">&#xe652;</i>新加坡，圣淘沙岛</p>
                                <p class="mb-2 travel_title">第一次来，我就爱上了这里</p>
                                <p class="mb-0 d-flex justify-content-between flex-wrap text_muted">
                                    <span>
                                        <b>作者</b>
                                        灰灰世界</span>
                                    <span>
                                        <b> 时间</b> 2018-2-1</span>
                                </p>
                            </div>
                        </div>
                    </div>
                  
                </div>
            </div>
        </div>

    </section>
</template>

<script>
    export default{
        data(){
            return{
               carousel:{  
                   carouselList:['','','','',''],
                   timer:null,
                   ind:0
                },
                tab:{
                    barList:['亚洲','欧洲','美洲','全球'],
                    ind:0,
                    imgList:[]
                },
                guide:{
                    imgList:['','','','','','']

                }
               
                
            }
        },
        methods:{
             carouselTask(){
                this.carousel.timer=setInterval(()=>{
                      this.carousel.ind++;
                      if(this.carousel.ind>this.carousel.carouselList.length-1){
                           this.carousel.ind=0;
                      }
                 },4000)
             },
             loadCarousel(){
                 this.axios.get('http://localhost:3001/index/carousel',{
                params:{num1:1,num2:4,num3:8,num4:17,num5:18}
                }).then(res=>{
                    this.carousel.carouselList=res.data;
                })
             },
             

             //http://localhost:3001/index/tab
               loadTab(){
                 this.axios.get('http://localhost:3001/index/tab'
                ).then(res=>{
                    this.tab.imgList=res.data;

                })
             },
              loadGuide(){
                 this.axios.get('http://localhost:3001/index/guide',
                ).then(res=>{
                    this.guide.imgList=res.data;
                })
             },
        },
        created() {
            this.loadCarousel();
            this.carouselTask();
            this. loadTab();
            this.loadGuide();
            
        },
        mounted(){
          
    
        },
        destroyed() {
            
        },

    }
</script>
<style>
     @import '../assets/css/index.css';
</style>