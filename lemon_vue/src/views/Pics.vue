<template>
      <section class="container-fulid mt-5 pt-5 pics">
        <div class="container pics_wall pr-0">
           <div class="title position-relative">
               <img :src="imgUrl">
               <!-- <img src=""> -->
                <span class="position-absolute">欢迎来到柠檬的宝藏库！<span class="curYear">2018</span></span>
           </div>  
           <div class="masonry w-100 ">
               <div class="item" v-for="item in imgList"><img :src="item" alt=""></div> 
      
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
                  imgUrl:this.$store.state.url+"/img/background/title.png",
                  imgList:[],
                  bigList:[],
                  midList:[]
            }
        },
         created() {
            this.axios.get(this.$store.state.url+'/pics/pics'
                ).then(res=>{
                    this.imgList=res.data;
                   var len=this.imgList.length;
                   console.log(len)
                  for(var i=0;i<len;i++){
                      if(i%5==0){
                          this.bigList.push(this.imgList[i].iimg_390_552);
                      }else{
                          this.midList.push(this.imgList[i].iimg_380_220);
                      }
                  }
                  this.imgList=[].concat(this.midList,this.bigList);
                   for(var i=0;i<len;i++){
                        if(i%5<4){
                          this.bigList.push(this.imgList[i]);
                      }else{
                          this.midList.push(this.imgList[i]);
                      }
                   }
                   this.imgList=[].concat(this.bigList,this.midList);
                }).then(()=>{
                    setTimeout(function(){
                             init();
                    },80)
                })
        },
        method:{   
            
        },

        mounted() {
            init();
        },
       
    }
</script>
<style>
    @import '../assets/css/pics.css';
</style>