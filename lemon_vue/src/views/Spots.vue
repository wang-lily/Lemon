<template>
    <section class="mb-5">
        <!--轮播start-->
        <div id="header" class="container-fluid position-relative p-0" @mouseover="pauseCarousel" @mouseout="startCarousel">
            <div class="w-100 position-relative">
                <picture>
                    <source media="(min-width: 1000px)" :srcset="carousel.Imgs[1].lg_url">
                    <source media="(max-width:999px)" :srcset="carousel.Imgs[1].md_url">
                    <img class="w-100" :src="carousel.Imgs[1].src">
                </picture>
            </div>
            <div class="w-100 position-absolute">
                <div  v-for="img of carousel.Imgs" :key="img.cid"   class="position-absolute w-100" :class="img.cid==carousel.cid?'in':'out'">
                    <picture>
                        <source media="(min-width: 1000px)" :srcset="img.lg_url">
                        <source media="(max-width:999px)" :srcset="img.md_url">
                        <img class="w-100" :src="img.src">
                    </picture>
                    <p class="w-100 pr-5 pl-5 mb-1 text-center">
                        <span class="iconfont icon-tubiao"></span>&nbsp;&gt;
                        <a herf="javascript:;">{{img.country}}</a>&nbsp;&gt;
                        <a herf="javascript:;">{{img.spot}}</a>
                    </p>
                </div>
            </div>
            <div class="w-100 d-none d-sm-block search-input">
                <p class="w-100 text-center text-white">
                    Let's go!
                </p>
                <form class="row d-md-flex bg-white  align-items-center">
                    <input class="col bg-transparent" type="text">
                    <span class="col-auto iconfont icon-sousuo"></span>
                </form>
            </div>
        </div>
        <!--轮播end-->
        <!--主体start-->
        <div id="body" class="container pl-0 pr-0">
            <!--全部目的地start-->
            <div id="all-spots">
                <h6 class="pt-4 pb-3 pl-2 m-0 border-bottom">
                    <span class="d-inline-block iconfont icon-mudedi1"></span>
                    <span>全部景点</span>
                </h6>
                <div class="pl-1 pr-1 mt-3">
                    <div class="row w-100 pl-1 pr-1 m-0" >
                        <span class="col-auto pr-3 pl-3 pt-1 pb-1" :class="allSpotsList.home.style" @mouseenter="activateStyle(allSpotsList,allSpotsList.home)">国内</span>
                        <span class="col-auto pl-3 pr-3 pt-1 pb-1" :class="allSpotsList.abroad.style" @mouseenter="activateStyle(allSpotsList,allSpotsList.abroad)">国外</span>
                        <span class="col"></span>
                    </div>
                    <div class=" pl-1 pr-1 m-auto" v-show="allSpotsList.abroad.style[1]">
                        <div class="row justify-content-start w-100 m-0 pt-1 pb-2">
                            <a v-for="(item,i) of allSpotsList.abroad.list" :key="i" href="javascript:;" class="pt-1 pl-1 col-4 col-md-2 text-center text-md-left" >{{item}}</a>
                        </div>
                    </div>
                    <div class=" pl-1 pr-1 m-auto" v-show="allSpotsList.home.style[1]">
                        <div class="row justify-content-start w-100 m-0 pt-1 pb-2">
                            <a v-for="(item,i) of allSpotsList.home.list" :key="i" href="javascript:;" class="pt-1 pl-1 col-4 col-md-2 text-center text-md-left">{{item}}</a>
                        </div>
                    </div>
                </div>
            </div>
            <!--全部目的地end-->
            <!--当季目的地推荐start-->
            <div id="spots01">
                <h6 class="pt-4 pb-3 pl-2 m-0 border-bottom">
                    <span class="d-inline-block iconfont icon-mudedi1"></span>
                    <span>当季景点推荐</span>
                </h6>
                <div class="pl-1 pr-1 mt-3">
                    <div class="row w-100 m-0 p-1 flex-nowrap justify-content-center" data-trigger="tab">
                        <span class="col d-none d-md-block p-0 pt-1 pb-1"></span>
                        <span class="col d-md-none  p-0 pt-1 pb-1 m-0 text-center" ><button class="text-white border-0 bg-transparent  iconfont icon-arrow_l" :disabled="spots01.prevHideTab==-1" @click="showPrevTab(spots01)"></button></span>
                        <span v-for="(item,i) of spots01.tabs" :key="i" class="col-auto pt-1 pb-1 pr-3 pl-3 pl-md-2 pr-md-2 pl-lg-3 pr-lg-3" :class="item.style" @mouseenter="activateStyle(spots01,spots01.tabs[i])">{{i+1}}月</span>
                        <span class="col d-md-none  p-0 pt-1 pb-1 m-0 text-center"  ><button class="text-white border-0 bg-transparent iconfont icon-arrow-r" @click="showNextTab(spots01)" :disabled="spots01.nextHideTab==12"></button></span>
                        <span class="col d-none d-md-block p-0 pt-1 pb-1"></span>
                    </div>
                    <div v-for="(item,i) of spots01.tabs" :key="i" v-show="item.style[1]" class="clearfix p-0">
                        <div v-for="(spot,j) of spots01.tabs[i].imgsList" :key="j" class="col-6 p-1 col-md-4   float-left">
                            <img class="img-fluid" :src="spot.iimg_380_220" alt="">
                            <div class="position-absolute p-3 " >
                                <p>{{spot.spot || spot.country}}</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--当季目的地推荐end-->
            <!--主题游推荐start-->
            <div id="spots02">
                <h6 class="pt-4 pb-3 pl-2 m-0 border-bottom">
                    <span class="d-inline-block iconfont icon-mudedi1"></span>
                    <span>主题游推荐</span>
                </h6>
                <div class="pl-1 pr-1 mt-3">
                    <div class="row w-100 m-0 p-1 flex-nowrap justify-content-center" data-trigger="tab">
                        <span class="col d-none d-md-block p-0 pt-1 pb-1"></span>
                        <span class="col d-md-none  p-0 pt-1 pb-1 m-0 text-center"><button class="text-white border-0 bg-transparent  iconfont icon-arrow_l" :disabled="spots02.prevHideTab==-1" @click="showPrevTab(spots02)"></button></span>
                        <span v-for="(item,i) of spots02.tabs" :key="i" class="col-auto pt-1 pb-1 pr-3 pl-3 pl-md-2 pr-md-2 pl-lg-3 pr-lg-3" :class="item.style" @mouseenter="activateStyle(spots02,spots02.tabs[i])">{{spots02.tabDetails[i]}}</span>
                        <span class="col d-md-none  p-0 pt-1 pb-1 m-0 text-center"  ><button class="text-white border-0 bg-transparent iconfont icon-arrow-r" @click="showNextTab(spots02)" :disabled="spots02.nextHideTab==5"></button></span>
                        <span class="col d-none d-md-block p-0 pt-1 pb-1"></span>
                    </div>
                    <div v-for="(item,i) of spots02.tabs" :key="i" class="p-0" v-show="item.style[1]">
                        <div class="position-relative p-1">
                            <img class="img-fluid" :src="item.imgsList[0] ? item.imgsList[0][0].lg_url :''"  alt="">
                            <div class="position-absolute p-3 " >
                                <p>{{item.imgsList[0] ? (item.imgsList[0][0].spot || item.imgsList[0][0].country) : ''}}</p>
                            </div>
                        </div>
                        <div class="row p-0 m-0">
                            <!-- <div v-if="item.imgsList[1]" v-for="(spot,j) in item.imgsList[1]" :key="j" class="col p-1 ">
                                <img v-if="spot[j]" class="img-fluid" :src="spot[j].iimg_390_552"  alt="">
                                <div class="position-absolute p-3 " >
                                    <p v-if="spot[j]">{{spot[j].spot || spot[j].country}}</p>
                                </div>
                            </div> -->
                            <div class="col p-1 ">
                                <img class="img-fluid" :src="item.imgsList[1] ? item.imgsList[1][0].iimg_390_552 :''"  alt="">
                                <div class="position-absolute p-3 " >
                                    <p>{{item.imgsList[1] ? (item.imgsList[1][0].spot || item.imgsList[1][0].country) : ''}}</p>
                                </div>
                            </div>
                            <div class="col p-1 ">
                                <img class="img-fluid" :src="item.imgsList[1] ? item.imgsList[1][1].iimg_390_552 :''" alt="">
                                <div class="position-absolute p-3 " >
                                    <p>{{item.imgsList[1] ? (item.imgsList[1][1].spot || item.imgsList[1][1].country) : ''}}</p>
                                </div>
                            </div>
                            <div class="col d-none d-md-block p-1 ">
                                <img class="img-fluid" :src="item.imgsList[1] ? item.imgsList[1][2].iimg_390_552 :''" alt="">
                                <div class="position-absolute p-3 " >
                                    <p>{{item.imgsList[1] ? (item.imgsList[1][2].spot || item.imgsList[1][2].country) : ''}}</p>
                                </div>
                            </div>
                            <div class="col d-none d-md-block p-1 ">
                                <img class="img-fluid" :src="item.imgsList[1] ? item.imgsList[1][3].iimg_390_552 :''" alt="">
                                <div class="position-absolute p-3 " >
                                    <p>{{item.imgsList[1] ? (item.imgsList[1][3].spot || item.imgsList[1][3].country) : ''}}</p>
                                </div>
                            </div>
                        </div>
                        <div class="position-relative p-1 d-md-none">
                            <img class="img-fluid" :src="item.imgsList[0] ? item.imgsList[0][1].lg_url :''" alt="">
                            <div class="position-absolute p-3 " >
                                <p>{{item.imgsList[0] ? (item.imgsList[0][1].spot || item.imgsList[0][1].country) : ''}}</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--主题游推荐end-->
        </div>
    </section>
</template>
<script>
    // import {getSpotsEffect} from '../assets/js/spots.js'
    export default {
        data(){
            return {
                // background:"background: url(`../img/tab/tab01.png`) no-repeat center center;",
                // -------------------------------轮播数据start---------------------------------------------------
                carousel:{
                    timer:null,
                    Imgs:["","","",""],
                    cid:14,
                    i:0
                },
                // --------------------------------轮播数据end--------------------------------------------

                // --------------------------------全部景点start--------------------------------------------
                allSpotsList:{
                    home:{
                        style:["","active"],
                        list:[]
                    },//国内
                    abroad:{
                        style:["",""],
                        list:[]    
                    },//国外
                    activeItem:null,
                },
                // --------------------------------全部景点end--------------------------------------------

                // --------------------------------当季景点推荐start--------------------------------------------
                spots01:{
                    tabs:[],
                    presentTab:(new Date()).getMonth(),
                    prevHideTab:0,
                    nextHideTab:0,
                    activeItem:null,
                },
                // --------------------------------当季景点推荐end--------------------------------------------
                spots02:{
                    tabDetails:["人文","山水","美食","海岛","休闲"],
                    tabs:[],
                    presentTab:2,
                    prevHideTab:0,
                    nextHideTab:0,
                    activeItem:null,
                }
                
            }
        },
        methods:{
            // -------------------------------------轮播方法start------------------------------------------------
            loadCarousel(){
                this.axios.get(`http://127.0.0.1:3001/spots/carousel`,{params:
                    {num1:9, num2:11, num3:14, num4:16}}).then(res=>{
                        this.carousel.Imgs = res.data;
                        // console.log(res.data);
                    })
            },
            task(){
                var index = this.carousel.i%this.carousel.Imgs.length;
                this.carousel.cid = this.carousel.Imgs[index].cid;
                this.carousel.i++;
                },
            startCarousel(){
                this.timer = setInterval(this.task,3000);
            },
            pauseCarousel(){
                clearInterval(this.timer);
            },
            // -----------------------------------轮播方法end--------------------------------------------------

            // -----------------------------------全部景点start--------------------------------------------------

            loadAllSpotsList(){
                this.allSpotsList.activeItem = this.allSpotsList.home;
                this.axios.get("http://127.0.0.1:3001/spots/allSpotsList").then(res=>{
                    var spotsList = res.data;
                    for(var spot of spotsList){
                        if(spot.country=="中国"){
                            this.allSpotsList.home.list.push(spot.spot);
                        }else{
                            this.allSpotsList.abroad.list.push(spot.spot || spot.country);
                        }
                    }
                })
            },
            // -----------------------------------全部景点end--------------------------------------------------
            activateStyle(spotsObj,item){
                this.$set(spotsObj.activeItem.style,1,"");
                spotsObj.activeItem = item;
                this.$set(spotsObj.activeItem.style,1,"active");
            },
            showNextTab(spotsObj){
                spotsObj.prevHideTab++;
                spotsObj.tabs[spotsObj.prevHideTab].style[0]="d-none d-md-block";
                spotsObj.tabs[spotsObj.nextHideTab].style[0]="";
                spotsObj.nextHideTab++;
            },
            showPrevTab(spotsObj){
                spotsObj.tabs[spotsObj.prevHideTab].style[0] = "";
                spotsObj.prevHideTab--;
                spotsObj.nextHideTab--;
                spotsObj.tabs[spotsObj.nextHideTab].style[0] = "d-none d-md-block";
            },
            loadSpotsTabs(spotsObj,tabTotal,showTabCount){
                for(var i=0; i<tabTotal; i++){
                    if(spotsObj.presentTab < tabTotal-showTabCount){
                        spotsObj.prevHideTab = spotsObj.presentTab-1;
                        spotsObj.nextHideTab = spotsObj.presentTab+showTabCount;
                        if(i < spotsObj.presentTab || i > spotsObj.presentTab+showTabCount-1){
                            spotsObj.tabs.push({
                                style:["d-none d-md-block",""],
                                imgsList:[]
                            })
                        }else if(i==spotsObj.presentTab){
                            spotsObj.tabs.push({
                                style:["","active"],
                                imgsList:[]
                            })
                        }else{
                            spotsObj.tabs.push({
                                style:["",""],
                                imgsList:[]
                            })
                        }
                    }
                    else{
                        spotsObj.prevHideTab = tabTotal-showTabCount-1;
                        spotsObj.nextHideTab = tabTotal;
                        if(i<tabTotal-showTabCount){
                            spotsObj.tabs.push({
                                style:["d-none d-md-block",""],
                                imgsList:[]
                            })
                        }else if(i==spotsObj.presentTab){
                            spotsObj.tabs.push({
                                style:["","active"],
                                imgsList:[]
                            })
                        }else{
                            spotsObj.tabs.push({
                                style:["",""],
                                imgsList:[]
                            })
                        }
                    }
                }
                spotsObj.activeItem = spotsObj.tabs[spotsObj.presentTab];
            },
            loadSpots01Imgs(){
                this.axios.get("http://127.0.0.1:3001/spots/spots01").then(res=>{
                    var list = res.data;
                    for(var item of list){
                        if(this.spots01.tabs[item.season].imgsList.length==6){
                            continue;
                        }
                        this.spots01.tabs[item.season].imgsList.push(item);
                    }
                })
            },
            loadSpots02Imgs(){
                this.axios.get("http://127.0.0.1:3001/spots/spots02").then(res=>{
                    var lgImgs = res.data.lgImgs;
                    var mdImgs = res.data.mdImgs;
                    for(var i=0; i<5; i++){
                        this.spots02.tabs[i].imgsList=[[],[]];
                    }
                    function getImgs(spotsObj,imgs,index,count,property){
                        for(var item of imgs){
                            // console.log(spotsObj.tabs[0].imgsList[1][property]);
                            switch(item.theme){
                                case "人文":
                                    if(spotsObj.tabs[0].imgsList[index].length<count){
                                        spotsObj.tabs[0].imgsList[index].push(item);   
                                    }
                                    break;
                                case "山水":
                                    if(spotsObj.tabs[1].imgsList[index].length<count){
                                        spotsObj.tabs[1].imgsList[index].push(item);   
                                    }
                                    break;
                                case "美食":
                                    if(spotsObj.tabs[2].imgsList[index].length<count){
                                        spotsObj.tabs[2].imgsList[index].push(item);   
                                    }
                                    break;
                                case "海岛":
                                    if(spotsObj.tabs[3].imgsList[index].length<count){
                                        spotsObj.tabs[3].imgsList[index].push(item);   
                                    }
                                    break;
                                case "休闲":
                                    if(spotsObj.tabs[4].imgsList[index].length<count){
                                        spotsObj.tabs[4].imgsList[index].push(item);   
                                    }
                                    break;
                                default: continue;
                                    break;
                            }
                        }
                    }
                    getImgs(this.spots02,lgImgs,0,2,0);
                    getImgs(this.spots02,mdImgs,1,4,1);
                    console.log(this.spots02.tabs[0].imgsList[0][1]);
                })
            }

        },
        created() {
            this.loadCarousel();
            this.startCarousel();
            this.loadAllSpotsList();
            this.loadSpotsTabs(this.spots01,12,4);
            this.loadSpots01Imgs();
            this.loadSpotsTabs(this.spots02,5,4);
            this.loadSpots02Imgs();
        },
        mounted() {
            
        }
    }
</script>
<style>
    @import '../assets/css/spots.css';
</style>
