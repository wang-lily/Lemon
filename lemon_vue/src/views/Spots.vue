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
        <div class="w-100 position-absolute" data-trigger="lunbo">
            <div  v-for="img in carousel.Imgs" :key="img.cid"   class="position-absolute w-100" :class="img.cid==carousel.cid?'in':'out'"  data-target="lunboItem">
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
                // -------------------------------轮播数据start---------------------------------------------------
                carousel:{
                    timer:null,
                    Imgs:["","","",""],
                    cid:14,
                    i:0
                }
                // --------------------------------轮播数据start--------------------------------------------
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
                console.log(index);
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
