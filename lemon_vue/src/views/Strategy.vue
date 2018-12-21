<template>
    <section class="strategy">
        <div class="container-fluid  p-0">
            <div class="imgLg  p-0 w-100 position-relative">
                <picture class=" imgLg">
                    <source media="(min-width: 999px)" :srcset="carousel.lg_url">
                    <source media="(max-width:1000px)" :srcset="carousel.md_url">
                    <img class="w-100" :src="carousel.src">
                </picture>
            </div>
        </div>

        <div class="container strategy_content pt-5 ">
            <div class="row">
                <div class="col-md-3  pl-0 content_left">
                    <h3 class="mb-1 text-muted p-2"><i class="iconfont icon-mudedi1"></i> 人气排行</h3>
                    <ul class="pointer_nav row">
                        <li class="mt-1 p-1 col-md-12 col-sm-3 col-4" v-for="(item,index) in spot" v-show="index<6" ><span class="mr-3 pl-2">{{index+1}}</span> {{item.country}}</li>
                       
                    </ul>
                    <div class="other row">
                        <p class="mt-1 col-md-12 col-sm-3 col-4 pr-0 "><span class="mr-3">7</span> 其他
                        </p>
                        <div class=" border  d-none w-100  p-2 ">
                            <a href="" v-for="(item,index) in spot" v-show="index>6" > {{item.country}}</a>
                        </div>
                    </div>
                </div>

                <div class="col-md-9 content_right">
                    <h3 class="mb-3 p-2 text-muted">推荐攻略</h3>
                    <div class="recommend p-4 mb-2">
                        <div class="box-top w-100 d-flex justify-content-between align-items-center">
                            <p><i class="iconfont icon-zhongzhuan"></i>来自 <span class="text-warning">自由行攻略</span></p>
                            <p><span class="ml-1">{{strategyList.zan}}</span>柠檬赞<i class="iconfont icon-zan text-warning pl-3"></i></p>
                        </div>
                        <p class="box-title p-2"><a href="/views/strategy_details.html">{{strategyList.totaltitle}}</a></p>
                        <div class="row box-bottom">
                            <ul class="row col-sm-10 box-bottom list-unstyled">
                                <li class="col-sm-4 col-4 pr-0">
                                    <!-- <img src="../img/carousel/lb01.png" class="w-100" alt=""> -->
                                </li>
                                <li class="col-sm-4 col-4 pr-0">
                                    <!-- <img src="../img/270-165/Malaysia06.png" class="w-100" alt=""> -->
                                </li>
                                <li class="col-sm-4 col-4 pr-0">
                                    <!-- <img src="../img/270-165/Malaysia09.png" class="w-100" alt=""> -->
                                </li>
                            </ul>
                            <p class="col-sm-2 d-flex  justify-content-around    
                                 align-items-center pr-1 text-muted">23654浏览</p>
                        </div>
                    </div>
                 
                    <!-- 分页 -->
                    <h6 class="mb-3 p-2 text-muted small">
                        <nav aria-label="Page navigation example">
                            <ul class="pagination mb-0 justify-content-end">
                                <li class="page-item  disabled"><a class="page-link bg-transparent" href="#">上一页</a></li>
                                <li class="page-item"><a class="page-link bg-transparent" href="#">1</a></li>
                                <li class="page-item active"><a class="page-link border" href="#">2</a></li>
                                <li class="page-item"><a class="page-link bg-transparent" href="#">3</a></li>
                                <li class="page-item"><a class="page-link bg-transparent" href="#">下一页</a></li>
                            </ul>
                        </nav>
                    </h6>

                </div>

            </div>
        </div>
    </section>
</template>
<script>
    export default{
        data(){
            return{
               carousel:'',
               spot:[],
               strategyList:[],  //当前页内容
               pageIndex:0,   //页码
               pageSize:6, //页大小
               pageCount:0,
               img:[]
            }
        },
        methods: {
              loadCarousel(){
                  this.axios.get('http://localhost:3001/strategy/bigimg',{params:{num:10}}).then(res=>{
                   this.carousel=res.data[0];
                    // console.log(res.data)
                  })
              },
              loadTab(){
                   this.axios.get('http://localhost:3001/strategy/tab').then(res=>{
                   this.spot=res.data;
                    // console.log( this.spot)
                  })
              },
              loadStrategy(){
                    this.axios.get('http://localhost:3001/strategy/getStrategy',{params:{pno:this.pno,pageSize:this.pageSize}}).then(res=>{
                     this.strategyList=res.data.data;
                    // console.log(obj);
                     for(var item of this.strategyList){
                        //  this.img.push()
                        console.log(item)
                     }
                  })
              }
        },
        created() {
            this.loadCarousel();
            this.loadTab();
            this.loadStrategy();
        },
    }
</script>
<style>
 @import '../assets/css/strategy.css';
</style>
