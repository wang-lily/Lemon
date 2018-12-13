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
            <div class="row w-100 pl-1 pr-1 m-0" data-trigger="tab">
                <!--<span class="col"></span>-->
                <span class="col-auto pr-3 pl-3 pt-1 pb-1">境内</span>
                <span class="col-auto pl-3 pr-3 pt-1 pb-1 active">境外</span>
                <span class="col"></span>
            </div>
            <div class=" pl-1 pr-1 m-auto">
                <div class="row justify-content-center justify-content-md-start w-100 m-0 pt-1 pb-2" data-target="tabItem">
                    <a href="javascript:;" class="pt-1 pl-1 col-3 col-md-2 text-center text-md-left">台湾</a>
                    <a href="javascript:;" class="pt-1 pl-1 col-3 col-md-2 text-center text-md-left">西藏</a>
                    <a href="javascript:;" class="pt-1 pl-1 col-3 col-md-2 text-center text-md-left">峨眉山</a>
                    <a href="javascript:;" class="pt-1 pl-1 col-3 col-md-2 text-center text-md-left">九寨沟</a>
                    <a href="javascript:;" class="pt-1 pl-1 col-3 col-md-2 text-center text-md-left">台湾</a>
                    <a href="javascript:;" class="pt-1 pl-1 col-3 col-md-2 text-center text-md-left">西藏</a>
                    <a href="javascript:;" class="pt-1 pl-1 col-3 col-md-2 text-center text-md-left">峨眉山</a>
                    <a href="javascript:;" class="pt-1 pl-1 col-3 col-md-2 text-center text-md-left">九寨沟</a>
                    <a href="javascript:;" class="pt-1 pl-1 col-3 col-md-2 text-center text-md-left">台湾</a>
                    <a href="javascript:;" class="pt-1 pl-1 col-3 col-md-2 text-center text-md-left">西藏</a>
                    <a href="javascript:;" class="pt-1 pl-1 col-3 col-md-2 text-center text-md-left">峨眉山</a>
                    <a href="javascript:;" class="pt-1 pl-1 col-3 col-md-2 text-center text-md-left">九寨沟</a>
                    <a href="javascript:;" class="pt-1 pl-1 col-3 col-md-2 text-center text-md-left">台湾</a>
                    <a href="javascript:;" class="pt-1 pl-1 col-3 col-md-2 text-center text-md-left">西藏</a>
                    <a href="javascript:;" class="pt-1 pl-1 col-3 col-md-2 text-center text-md-left">峨眉山</a>
                    <a href="javascript:;" class="pt-1 pl-1 col-3 col-md-2 text-center text-md-left">九寨沟</a>
                    <a href="javascript:;" class="pt-1 pl-1 col-3 col-md-2 text-center text-md-left">台湾</a>
                    <a href="javascript:;" class="pt-1 pl-1 col-3 col-md-2 text-center text-md-left">西藏</a>
                    <a href="javascript:;" class="pt-1 pl-1 col-3 col-md-2 text-center text-md-left">峨眉山</a>
                    <a href="javascript:;" class="pt-1 pl-1 col-3 col-md-2 text-center text-md-left">九寨沟</a>
                    <a href="javascript:;" class="pt-1 pl-1 col-3 col-md-2 text-center text-md-left">台湾</a>
                    <a href="javascript:;" class="pt-1 pl-1 col-3 col-md-2 text-center text-md-left">西藏</a>
                    <a href="javascript:;" class="pt-1 pl-1 col-3 col-md-2 text-center text-md-left">峨眉山</a>
                    <a href="javascript:;" class="pt-1 pl-1 col-3 col-md-2 text-center text-md-left">九寨沟</a>
                </div>
            </div>
        </div>
    </div>
    <!--全部目的地end-->
        </div>
    </section>
</template>
<script>
    // import {getSpotsEffect} from '../assets/js/spots.js'
    export default {
        data(){
            return {
                background:"background: url(`../img/tab/tab01.png`) no-repeat center center;",
                // -------------------------------轮播数据start---------------------------------------------------
                carousel:{
                    timer:null,
                    Imgs:["","","",""],
                    cid:14,
                    i:0
                }
                // --------------------------------轮播数据end--------------------------------------------
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
            }
            // -----------------------------------轮播方法end--------------------------------------------------
        },
        created() {
            this.loadCarousel();
            this.startCarousel();
        },
        mounted() {
            
        }
    }
</script>
<style>
    @import '../assets/css/spots.css';
</style>
