<template>
    <section class="mb-5">
        <!--轮播start-->
    <div id="header" class="container-fluid position-relative p-0" >
        <div class="w-100 position-relative">
            <picture>
                <source media="(min-width: 1000px)" :srcset="carouselImgs[1].lg_url">
                <source media="(max-width:999px)" :srcset="carouselImgs[1].md_url">
                <img class="w-100" :src="carouselImgs[1].src">
            </picture>
            <!--<img class="position-relative w-100" src="../img/carousel/lb01.png">-->
        </div>
        <div class="w-100 position-absolute" data-trigger="lunbo">
            <div  v-for="img in carouselImgs" :key="img.cid"   class="position-absolute w-100" :class="img.cid==carouselCid?'in':'out'"  data-target="lunboItem">
                <picture>
                    <source media="(min-width: 1000px)" :srcset="img.lg_url">
                    <source media="(max-width:999px)" :srcset="img.md_url">
                    <img class="w-100" :src="img.src">
                </picture>
                <!--<img class="w-100" src="../img/carousel/lb15.png">-->
                <p class="w-100 pr-5 pl-5 mb-1 text-center">
                    <span class="iconfont icon-tubiao"></span>&nbsp;&gt;
                    <a>{{img.country}}</a>&nbsp;&gt;
                    <a>{{img.spot}}</a>
                </p>
            </div>
            <!-- <div  class="position-absolute w-100 out" data-target="lunboItem">
                <picture>
                    <source media="(min-width: 1000px)" srcset="../img/carousel/lb16.png">
                    <source media="(max-width:999px)" srcset="../img/carousel/lb16_500x250.png">
                    <img class="w-100" src="../img/carousel/picture.png">
                </picture>
                <p class="w-100 pr-5 pl-5 mb-1 text-center">
                    <span class="iconfont icon-tubiao"></span>&nbsp;&gt;
                    <a>中国</a>&nbsp;&gt;
                    <a>西藏</a>
                </p>
            </div> -->
            <!-- <div  class="position-absolute w-100 out" data-target="lunboItem">
                <picture>
                    <source media="(min-width: 1000px)" srcset="../img/carousel/lb11.png">
                    <source media="(max-width:999px)" srcset="../img/carousel/lb11_500x250.png">
                    <img class="w-100" src="../img/carousel/picture.png">
                </picture>
                <p class="w-100 pr-5 pl-5 mb-1 text-center">
                    <span class="iconfont icon-tubiao"></span>&nbsp;&gt;
                    <a>中国</a>&nbsp;&gt;
                    <a>苏州</a>
                </p>
            </div> -->
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
    </section>
</template>
<script>
    // import {getSpotsEffect} from '../assets/js/spots.js'
    export default {
        data(){
            return {
                background:"background: url(`../img/tab/tab01.png`) no-repeat center center;",
                carouselImgs:["","","",""],
                carouselCid:14
            }
        },
        methods:{
            loadCarousel(){
                this.axios.get(`http://127.0.0.1:3001/spots/carousel`,{params:
                    {num1:9, num2:11, num3:14, num4:16}}).then(res=>{
                        this.carouselImgs = res.data;
                        console.log(res.data);
                    })
            },
            carousel(){
                var i = 0;
                function task(){
                    if(i==this.carouselImgs.length){
                        i=0;
                    }
                    this.carouselCid = this.carouselImgs[i].cid;
                    i++;
                }
                var timer = setInterval(task.bind(this),3000);
            }
        },
        created() {
            this.loadCarousel();
        },
        mounted() {
            this.carousel();
        }
    }
</script>
<style>
    @import '../assets/css/spots.css';
</style>
