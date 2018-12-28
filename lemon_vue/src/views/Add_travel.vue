<template>
    <div>
        <!-- 暂存图片用户不可见start -->
        <div id="preview" class="position-absolute">
        </div>
        <!-- 暂存图片用户不可见end -->
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
                <img class="bigImg w-100" :src="topImg.src" />
            </picture>
            <!-- 上传头图 -->
            <div class="position-absolute d-flex flex-column justify-content-center headerImg">
                <p class="mb-0">
                    <a id="headerImg-icon" href="javascript:;" >
                    <span class="iconfont icon-tupian text-warning"></span>
                    </a>
                </p>
                <input id="headerImg-btn" accept="image/*" type="file"/>
                <div>
                    <p class="text-white mb-0">设置游记头图</p>
                    <p class="text-white mb-1 d-none d-sm-block">请选择尺寸大于270px*165px的高清图片上传</p>
                </div>
                <div class="spot">
                    <input id="spot" class="p-3" type="text" placeholder="填写景点名称" autofocus/>
                </div>
            </div>
        </div>
        <!-- 大图 end -->

        <div class="container text-center">
            <input id="title" type="text" class="w-75 p-3 text-center h5 border-success border-bottom" placeholder="填写游记标题" />
        </div>

        <div class="container p-0">
        <!-- 添加区域主体start -->
        <div id="content" class="position-relative">
          <div id="section" class="position-relative border p-0 pt-2 section">
            <textarea
              class="w-100 p-3 pr-5"
              rows="1" 
              placeholder="从这里开始，记录旅程的点点滴滴..."
              data-type="parag"></textarea>
          </div>
          <!-- 添加区域主体end -->

          <!-- 侧边栏aside start -->
          <div
            id="aside"
            class="position-absolute bg-white p-0 aside"
            style=" top:0;right:0;"
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
            <button id="preview-btn" class="m-2" type="button">预览</button>
            <button id="modify-btn" class="m-2 d-none text-success" type="button">修改</button>
            <button id="submit-btn" class="m-2" type="button" @click="submit()">发表</button>
          </div>
        </div>
      </div>

        <!-- 插入图片尺寸不合适时弹出提示 start -->
        <div id="pop-alert" class="fixed-top w-100 h-100 d-none pop-mask" :class="alert.style">
            <div class="fixed-top bg-light d-flex flex-column justify-content-center size-alert" >
                <div id="alert1" class="h6 p-4 d-none">您选择的图片尺寸太小，请选择尺寸大于100px*50px的图片</div>
                <div id="alert2" class="h6 p-4 d-none">您选择的图片尺寸太小，请选择尺寸大于270px*165px的图片</div>
                <div id="alert2" class="h6 p-4 text-center d-none" :class="alert.style" v-cloak>{{alert.msg}}</div>
                <div class="text-center">
                    <button class="btn btn-warning pl-4 pr-4" @click="closeAlert()">确定</button>
                </div>
            </div>
        </div>
        <!-- 发表成功后弹出提示 start -->
        <div v-if="submitSuccess" class="fixed-top w-100 h-100 pop-mask">
            <div class="fixed-top bg-light d-flex flex-column justify-content-center size-alert" >
                <div class="h6 p-4 text-center">游记发表成功！</div>
                <div  class="d-flex justify-content-center mt-3">                
                    <router-link to="/index" class="btn btn-success mr-2  pl-3 pr-3">返回首页</router-link>
                    <button @click="reloadCur()" type="button" class="btn btn-success ml-2 pl- pr-3">继续发表</button>    
                </div>
            </div>
        </div>
        <!-- 发表成功后弹出提示 end -->    
        <!--插入图片后弹出提示 end-->
        <!-- 弹出设置头图 start -->
        <div id="pop-img" class="fixed-top w-100 h-100 pop-mask d-none">
            <div class="load-img position-absolute" > 
                <div class="position-relative">
                    <img class="img-box" src="">
                    <div id="selected-area" class="position-absolute"></div>
                    <canvas id="my-canvas" ></canvas>
                </div> 
                <div class="d-flex justify-content-center mt-3" data-target="btn">
                    <button class="btn btn-dark mr-5 pl-4 pr-4" data-target="cancel">取消</button>   
                    <button class="btn btn-dark ml-5 pl-4 pr-4" data-target="sure">确定</button>
                </div>
            </div>   
        </div>
        <!-- 弹出设置头图 end -->

    </div>
</template>
<script>
import {addTravel} from "../assets/js/add_travel.js"
import autosize from "autosize"
    export default {
        inject:['reload'],
        data(){
            return {
                topImg:{
                    lg_url:"",
                    md_url:"",
                    src:""
                },
                alert:{
                    style:"",
                    msg:""
                },
                submitSuccess:false
            }
        },
        methods:{
            loadTopImg(){
                this.axios.get("http://127.0.0.1:3001/add_travel/top?num=8").then(res=>{
                    this.topImg.lg_url = res.data.lg_url;
                    this.topImg.md_url = res.data.md_url;
                    this.topImg.src = res.data.src;
                })
            },
            // 创建section监听
            createSectionObserver(){                               
                    var MutationObserver = window.MutationObserver || window.WebKitMutationObserver || window.MozMutationObserver;
                    var observer = new MutationObserver(function(){
                        autosize($("#section textarea"));
                        autosize.update($("#section textarea"))
                    });
                    observer.observe($("#section")[0],{
                        attributes:false,
                        childList:true,
                        characterData:false
                    });
            },
            submit(){
                if(!this.$store.state.userMsg){
                    // alert("请先登录！");
                    this.alert.style = "d-block";
                    this.alert.msg = "请先登录！";
                    return;
                }
                var submitObj = {
                    // 需要传入服务器的接口
                    uid : this.$store.state.userMsg.uid,
                    spot : "",//字符串 景点标题
                    title : "", //字符串 游记标题
                    headerImg : "", //字符串url 游记头图
                    desc : "", //字符串 游记描述
                    text : ""//字符串 游记主体html片段
                    // imgURLsJson : "",//json字符串
                    // videoURLsJson : "",//json字符串
                }
                var imgURLs = [];
                var videoURLs = [];
                //判断是否上传头图
                var headerImgEle = $("#headerImg-icon img")[0];
                if(!headerImgEle){
                    // alert("请上传头图！");
                    this.alert.style = "d-block";
                    this.alert.msg = "请上传头图！"
                    return;
                }else{
                    submitObj.headerImg = headerImgEle.src;
                }
                //判断是否填写标题
                var titleEle = $("#title")[0];
                if(!titleEle.value){
                    // alert("请填写游记标题！");
                    this.alert.style = "d-block";
                    this.alert.msg = "请填写游记标题！"
                    return;
                }else{
                    submitObj.title = titleEle.value;
                }
                //判断是否填写景点名称
                var spot = $("#spot")[0];
                if(!spot.value){
                    // alert("请填写景点名称！");
                    this.alert.style = "d-block";
                    this.alert.msg = "请填写景点名称！"
                    return;
                }else{
                    submitObj.spot = spot.value;
                }
                //判断第一个段落内容
                var firstParag = document.querySelector("textarea").value;
                if(firstParag.length<20){
                    // alert("第一个段落内容请多于50个字！以获得更好的展示体验");
                    this.alert.style = "d-block";
                    this.alert.msg = "第一个段落内容请多于20个字！以获得更好的展示体验!"
                    return;
                }else{
                    submitObj.desc = firstParag.slice(0,20);
                }
                $("#section div.mask").remove();
                //表单标签更改
                var $spots = $("#section [data-type='spot']");
                for(var i=0;i<$spots.length;i++){
                    var value = $spots[i].value;
                    $($spots[i]).replaceWith(`<span class="p-2" style="height:24px">${value}</span>`);        
                }
                var $smTitles = $("#section [data-type='sm-title']");
                for(var i=0;i<$smTitles.length;i++){
                    var value = $smTitles[i].value;
                    $($smTitles[i]).replaceWith(`<h5 class="h5 pl-3" style="font-weight:bold;">${value}</h5>`);
                }
                var $parags = $("#section [data-type='parag']");
                for(var i=0;i<$parags.length;i++){
                    var value = $parags[i].value;
                    $($parags[i]).replaceWith(`<p class="pl-3" >${value}</p>`);
                }
                // textHTML获取
                submitObj.text = $("#section").html();
                submitObj.text = submitObj.text.replace(/\&/g,"%26");
                submitObj.text = (""+submitObj.text.replace(/\+/g,"%2B"));

                $.ajax({
                    type:"post",
                    url:"http://127.0.0.1:3001/add_travel/submit_text",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    data:JSON.stringify(submitObj),
                    success: (res)=>{
                        // console.log(res);
                        if(res.code===1){
                            // alert("游记发表成功！")
                            this.submitSuccess = true;
                        }
                    
                    }
                })
            },
            closeAlert(){
                this.alert.style = "";
                this.alert.msg = "";
            },
            reloadCur(){
                this.reload();
            }

        },
        created() {
            this.loadTopImg();
        },
        mounted() {
            addTravel();
            this.createSectionObserver();
        }
    }
</script>
<style>
@import '../assets/css/add_travel.css';
[v-cloak] {
display: none;
}
</style>