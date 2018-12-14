<template>
      <section class="container-fulid mt-5 pt-5 pics">
        <div class="container pics_wall pr-0">
           <div class="title position-relative">
               <img src="../assets/background/title.png">
                <span class="position-absolute">欢迎来到柠檬的宝藏库！<span class="curYear">2018</span></span>
           </div>  
           <div class="masonry w-100 d-flex">
               <div class="item" v-for="item in imgList"><img :src="item" alt=""></div> 
               <!-- <div class="item"><img src="../assets/thumbs/2.jpg" alt=""></div> 
               <div class="item"><img src="../assets/thumbs/3.jpg" alt=""></div> 
               <div class="item"><img src="../assets/thumbs/4.jpg" alt=""></div> 
               <div class="item"><img src="../assets/thumbs/5.jpg" alt=""></div> 
               <div class="item"><img src="../assets/thumbs/6.jpg" alt=""></div> 
               <div class="item"><img src="../assets/thumbs/7.jpg" alt=""></div> 
               <div class="item"><img src="../assets/thumbs/8.jpg" alt=""></div> 
               <div class="item"><img src="../assets/thumbs/9.jpg" alt=""></div> 
               <div class="item"><img src="../assets/thumbs/10.jpg" alt=""></div> 
               <div class="item"><img src="../assets/thumbs/1.jpg" alt=""></div> 
               <div class="item"><img src="../assets/thumbs/2.jpg" alt=""></div> 
               <div class="item"><img src="../assets/thumbs/3.jpg" alt=""></div>  -->
           </div>
        </div>
        
    </section>
</template>
<script>
import $ from 'jquery'
import {init} from '../../src/assets/js/pics.js'
    export default{
        data(){
            return{
                  imgList:[],
                  bigList:[],
                  midList:[],
                  smaList:[]
            }
        },
        method:{
              randomsort(a,b){
                  return Math.random()>.5?-1:1;
              }
        },
        created() {
            this.axios.get('http://localhost:3001/pics/pics'
                ).then(res=>{
                    this.imgList=res.data;
                   var len=this.imgList.length;
                  for(var i=0;i<len;i++){
                      if(i%5==0){
                          this.smaList.push(this.imgList[i].iimg_170_240);
                      }else if(i%5<3){
                          this.midList.push(this.imgList[i].iimg_270_165);
                      }else{
                          this.bigList.push(this.imgList[i].iimg_390_552);
                      }
                  }
                  this.imgList=[].concat(this.bigList,this.midList,this.midList);
                  this.imgList.sort(this.randomsort); 
                  console.log(this.imgList)
                })
        }
    }
</script>
<style>
    @import '../assets/css/pics.css';
</style>