<template>
    <header class="header fixed-top  pb-md-2 bg-white">
      <div class="container">
          <!--导航栏start-->
          <nav id="header-nav" class="row align-items-center pt-md-2">
              <!--导航按钮-->
              <div class="col d-md-none">
                  <ul class="nav-icon m-0" data-trigger="navIcon" data-status=0>
                      <li class="nav-icon-top"></li>
                      <li class="nav-icon-bottom"></li>
                  </ul>
              </div>
              <!--logo-->
              <a href="/">
                  <img id="brand" :src="this.$store.state.url+'/img/logo/lemon_logo_black.png'">
              </a>
              <!--个人中心-->
              <div v-if="this.$store.state.userMsg" class="col col-md-auto order-md-4 position-relative iconfont icon-login1_1 text-right p-md-0 personal" data-trigger="toggle">
                  <div class="position-absolute flex-column pr-3 p-md-0 d-none" data-target="toggleItem">
                      <div class="align-self-end mr-2"></div>
                      <ul class="pl-3 pr-3 speed">
                          <li class="text-left border-bottom" v-cloak>{{this.$store.state.userMsg?this.$store.state.userMsg.user:''}}</li>
                          <li class="text-left border-bottom"><router-link to="/personal" class="iconfont icon-touxiang">&nbsp;个人中心</router-link> </li>
                          <li class="text-left border-bottom"><router-link to="/add_travel" class="iconfont icon-fabiaoyouji">&nbsp;发表游记</router-link></li>
                          <li class="text-left border-bottom"><a  class="iconfont icon-tuichu" @click="signout">&nbsp;退出</a></li>
                      </ul>
                  </div>
              </div>
              <router-link v-else class="col iconfont icon-login1_0 text-right col-md-auto order-md-4 p-md-0" to="/login_register"></router-link>
              <div class="col-12 d-md-none"></div>
              <!--导航/搜索-->
              <div class="col-12 col-md order-md-2 d-md-flex border-dark">
                  <!-- 下拉选项 -->
                  <div id="collapse-navbar" class="p-0 collapse-navbar collapse-navbar-0  d-md-inline-flex justify-content-md-around align-items-md-center" data-target="collapse_navbar">
                      <div class="d-md-none">
                          <form>
                              <span class="iconfont icon-sousuo"></span>
                              <input type="text" name="search" placeholder="搜索...">
                          </form>
                      </div>
                      <ul id="nav-items" class="d-md-inline-flex justify-content-md-around m-0">
                          <li><router-link class="iconfont icon-shouyefill" to="/index" data-target="item"></router-link></li>
                          <li><router-link to="/spots" data-target="item">景点</router-link></li>
                          <li><router-link to="/travels" data-target="item">游记</router-link></li>
                          <li><router-link to="/" data-target="item">美食</router-link></li>
                          <li><router-link to="/strategy"  data-target="item">指南</router-link></li>
                          <li><router-link class="iconfont icon-some" to="/" data-target="item"></router-link></li>
                      </ul>
                  </div>
              </div>
            <!--搜索icon-->
              <a class="d-none col-auto d-md-inline order-md-3 ml-2 iconfont  icon-sousuo" data-trigger="searchIcon"></a>
          </nav>
          <!--导航栏end-->

          <!--搜索栏start-->
          <div id="search-page" class="fixed-top bg-white">
              <p>
                  <button id="close-icon" class="btn bg-transparent iconfont icon-guanbi"></button>
              </p>
              <form class="row w-75 m-auto">
                  <!--按地方搜索-->
                  <div class="col-5 card">
                      <div id="search-address" class="card-header d-inline-flex align-items-center">
                          <span class="iconfont icon-dizhi"></span>
                          <input class="form-control border-0 bg-transparent" type="text" placeholder="请选择您查询的地区">
                          <span class="iconfont icon-xiala"></span>
                      </div>
                          <div class="card-body d-none" data-target="content">
                              <!--地点1-->
                              <div>
                                  <div class="search-list d-flex align-items-start">
                                      <div class=" d-inline-block">
                                          <h5 class="iconfont icon-dizhi"></h5>
                                      </div>
                                      <div class="d-inline-block">
                                          <h5>中国</h5>
                                          <p>峨眉山</p>
                                      </div>
                                  </div>
                              </div>
                              <!--地点2-->
                              <div>
                                  <div class="search-list d-flex align-items-start">
                                      <div class=" d-inline-block">
                                          <h5 class="iconfont icon-dizhi"></h5>
                                      </div>
                                      <div class="d-inline-block">
                                          <h5>中国</h5>
                                          <p>九寨沟</p>
                                      </div>
                                  </div>
                              </div>
                          </div>
                  </div>
                      <!--全站搜索-->
                  <div class="col-5">
                      <div id="search-all" class="d-flex align-items-center card-header">
                          <span class="iconfont icon-sousuo"></span>
                          <input class="form-control bg-transparent border-0" type="text" placeholder="请输入您要查询的内容">
                      </div>
                  </div>
                  <div class="col-2">
                          <button id="search-btn" class="btn pr-4 pl-4" >搜索</button>
                  </div>
                  <div class="bg-white p-3"></div>
              </form>
          </div>
              <!--搜索栏end-->
      </div>   
    </header>
</template>

<script>
    import $ from 'jquery'
    import {getHeaderEffect} from '../../src/assets/js/header.js'
    export default {
        data(){
            return {
                activeTab:"index",
               message:"header的生命周期："
            }
        },
        props:[],//接收来自父子件的数据
        methods:{
            signout(){
                this.axios.get(this.$store.state.url+"/user/signout");
                this.$store.commit("signout");
                this.$router.push('/index');
            },
        },
        mounted() {
            getHeaderEffect();
        }
    }
</script>
<style lang="scss">
//   @import '../assets/css/header.css';
  @import '../assets/scss/header.scss';
  [v-cloak] {
display: none;
}
</style>
    