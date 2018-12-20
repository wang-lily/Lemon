<template>
    <div>
        <!-- 大图 start -->
        <div id="top" class="container-fluid position-relative w-100 p-0 m-0">
            <picture>
                <source
                media="(min-width: 1000px)"
                :srcset="topImg.lg_url"
                />
                <source
                media="(max-width:999px)"
                :srcset="topImg.md_url"
                />
                <img class=" w-100" :src="topImg.src" />
            </picture>
            <p class="position-absolute text-white">-记录精彩瞬间-</p>
            <div class="position-absolute">
                <input class="p-3" type="text" placeholder="填写游记标题" autofocus/>
            </div>
        </div>
        <!-- 大图 start -->

        <!-- 主体 start -->
        <div class="container p-0">
            <div id="content" class="position-relative">
            <div id="section" class="position-relative border p-0 pt-2 section">
                <!-- 暂存图片用户不可见start -->
                <div id="preview" class="position-absolute">
                </div>
                <!-- 暂存图片用户不可见end -->
                <textarea
                class="w-100 p-3 pr-5"
                rows="1" 
                placeholder="从这里开始，记录旅程的点点滴滴..."
                ></textarea>
            </div>
            <!-- 侧边栏aside start -->
            <div
                id="aside"
                class="position-absolute bg-white p-0 aside"
            >
                <div id="alert-insert" class="d-flex  align-items-center alert-insert">
                <div class="m-auto">
                    <span
                    id="arrow"
                    class="iconfont icon-arrow_l align-items-center h3"
                    ></span>
                </div>
                <ul class="d-flex flex-column justify-content-center pt-3 m-0">
                    <li id="insertImg" class="position-relative mr-1 btn-shadow">
                    <span
                    class="iconfont icon-tupian text-warning h4"
                    ></span>
                    <span>&nbsp;&nbsp;插入图片</span>
                    <input id="fileImg"
                        accept="image/*"
                        class="hide-input"
                        type="file"
                    />
                    </li>
                    <li id="insertVideo" class="position-relative mr-1 btn-shadow">
                    <span                  
                    class="iconfont icon-shipin text-warning h4"
                    ></span>
                    <span>&nbsp;&nbsp;插入视频</span>                
                    <input id="fileVideo"
                        accept="video/*"
                        class="hide-input"
                        type="file"
                    />
                    </li>
                    <li  id="insertTitle" class="position-relative mr-1 btn-shadow">                 
                    <span                 
                    class="iconfont icon-biaoti text-warning h4"
                    ></span>
                    <span>&nbsp;&nbsp;插入段落标题</span>                  
                    <input id="btnTitle" class="hide-input" type="button" />
                    </li>
                    <li  id="insertTxt" class="position-relative mr-1 btn-shadow">     
                    <span                  
                    class="iconfont icon-txt text-warning h4"
                    ></span>
                    <span>&nbsp;&nbsp;插入文本</span>
                    <input id="btnTxt" class="hide-input" type="button"/>
                    </li>
                    <li class="position-relative d-flex flex-column p-0 mr-1 text-muted">
                    <small class="text-center pt-2">16:41:11</small>
                    <small class="text-center pt-2 pb-2">保存了草稿</small>
                    </li>
                    <li class="position-relative p-1 mr-1 my-btn text-center">
                    <button class="h-100 bg-white">
                        <small class="text-success">保存草稿</small>
                    </button>
                    </li>
                    <li class="position-relative mr-1 pt-3">
                    <h6 class="text-center m-0 pb-1 border-bottom">游记目录</h6>
                    <ol id="travel-list" class="text-muted pl-2 pt-2">
                        <li><small>1/&nbsp;&nbsp;默认段落</small></li>
                    </ol>
                    </li>
                </ul>
                </div>
            </div>
            <!-- 侧边栏aside end -->
            <div class="my-btn w-100 text-center mb-3">
                <button class="m-2">预览</button> <button class="m-2">发表</button>
            </div>
            </div>
        </div>
        <!-- 主体 end -->

        <!-- 插入图片尺寸不合适时弹出提示 start -->
        <div id="pop-mask" class="fixed-top w-100 h-100 d-none">
        <div class="fixed-top bg-light d-flex flex-column justify-content-center size-alert">
            <div class="h6 p-4">您选择的图片尺寸太小，请选择尺寸大于100px*50px的图片</div>
            <div class="text-center">
                <button class="btn btn-warning w-25">确定</button>
            </div>
            </div>
        </div>
        <!--插入图片后弹出提示 end-->
    </div>
</template>
<script>
import {addTravel} from "../assets/js/add_travel.js"
    export default {
        data(){
            return {
                topImg:{
                    lg_url:"",
                    md_url:"",
                    src:""
                }
            }
        },
        methods:{
            loadTopImg(){
                this.axios.get("http://127.0.0.1:3001/add_travel/top?num=8").then(res=>{
                    this.topImg.lg_url = res.data.lg_url;
                    this.topImg.md_url = res.data.md_url;
                    this.topImg.src = res.data.src;
                })
            }
        },
        created() {
            this.loadTopImg();
        },
        mounted() {
            addTravel();
        }
    }
</script>
<style>
@import '../assets/css/add_travel.css';
</style>