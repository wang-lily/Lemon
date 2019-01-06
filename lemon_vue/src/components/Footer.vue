<template>
       <footer class="pt-4 ">
        <div class="container-fluid text-center">
            <div class="text-center mb-2 title pb-1" > 
                <div>
                    <h4>人生不止眼前的苟且,还有诗与远方!</h4>
                    <a href="#"> <i class="iconfont">&#xe60e;</i></a>
                    <a href="#"> <i class="iconfont">&#xe603;</i></a>
                    <a href="#"> <i class="iconfont">&#xe6c4;</i></a>
                </div>
            </div>
           
            <div class="row " > 
                     <div class="col-md-2 col-sm-12"> 
                        <a class="col align-self-center text-center" href="#">
                            <img id="brand" :src="this.$store.state.url+'/img/logo/lemon_logo_white.png'" >
                        </a>
                    </div> 
                    <div  class="col-md-7 col-sm-12 text_small text-center ml-4">
                                <p> © 2018 Lemon.cn 渝ICP备1343111号 </p> 
                                <p>举报邮箱 Lemon@lemon.com
                                &nbsp;lemon客服：国内8888-125-345
                           </p>    
                    </div>
                </div>
                 <p class="footer_totop mb-0"><a href=""> <i class="iconfont">&#xe6b8;</i></a></p>
        </div>
    </footer>
</template>

<script>
    export default {
        data(){
            return {
               
            }
        },
        methods:{
            
        },
        mounted() {
            
        }
    }
</script>
<style>
  @import '../assets/css/footer.css';
</style>
    