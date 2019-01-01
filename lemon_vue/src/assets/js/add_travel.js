import $ from 'jquery'
import autosize from 'autosize'
function addTravel(){
    var focusedEles = {
        "editable": document.querySelector("#section>textarea:last-child"),//存放#section中获得焦点的可文本编辑的元素,默认为最后一个textarea；
        "prev":null,//存放#section中前一个获得焦点的元素
        "now":null//存放#section中当前获得焦点对象的元素
    };
    var btnA = null;//存放#section中被点击的title为“重置”的a元素
    var sectionScrollTop = 0;
    // 存放选区数据
    var selectedAreaData = {
        canMove:false,
        canDown:false,
        canUp:false,
        canLeft:false,
        canRight:false,
        mouseX:0,
        mouseY:0
    }
    
    //初始化#section的顶部
    function initSection(){
        if($("#section").children().length < 2){
            var textareaHtml = `<textarea 
                                class="w-100 pl-3 pt-0 pb-0 pr-5"
                                rows="1"
                                data-type="parag"></textarea>`;
            $("#section").append(textareaHtml);
        }
        var firstTa = $("#section").children()[1];
        if(!(firstTa.value)){
            $(firstTa).val(" ");
        }
    }
    // img预加载
    function imgPreview(url,width,height,callback){
        var imgPreview = `<img src="${url}" style="opacity:0"/>`;
        var img = `<img src="${url}" alt="" style="max-width:100%;"/>`;
        $("#preview").append(imgPreview);
        var imgPreviewWidth = "";
        var imgPreviewHeight = "";
        var imgObj = null;
        $(imgPreview).on("load",function(){
            imgPreviewWidth = $("#preview>img").css("width");
            imgPreviewHeight = $("#preview>img").css("height");
            if (imgPreviewWidth.slice(0,-2)>=width && imgPreviewHeight.slice(0,-2)>=height){
                imgObj = {img,imgPreviewWidth,imgPreviewHeight};
            }
            callback(imgObj);
        });
    }

    function isInsertedable(){
        if(focusedEles["now"]!==focusedEles["editable"]){
            console.log("不在可编辑区"); 
            return false;
        }
        if(focusedEles["editable"].nodeName != "TEXTAREA" && focusedEles["editable"].getAttribute("placeholder")!="添加标题"){
            console.log("不可进行插入操作");
            return false;
        }
        return true;
    }

    function getPrevAndNext(){
        var prevAndNext = {
            $prevTxtEle:null,
            $nextTxtEle:null,
            prevTxt:"",
            nextTxt:""
        }
        var cursePos = focusedEles["editable"].selectionEnd;
        prevAndNext.prevTxt = focusedEles["editable"].value.slice(0,cursePos);
        prevAndNext.nextTxt = focusedEles["editable"].value.slice(cursePos,focusedEles["editable"].value.length);
        // 获取ta相邻的前一个为可编辑（textarea，input）的元素
        if($(focusedEles["editable"]).prev()[0] && ($(focusedEles["editable"]).prev()[0].tagName=="TEXTAREA" || $(focusedEles["editable"]).prev()[0].tagName=="INPUT")){
            prevAndNext.$prevTxtEle = $(focusedEles["editable"]).prev();
        }
        // 获取ta相邻的下一个为可编辑（textarea，input）的元素
        if($(focusedEles["editable"]).next()[0] && ($(focusedEles["editable"]).next()[0].tagName=="TEXTAREA" || $(focusedEles["editable"]).next()[0].tagName=="INPUT")){
            prevAndNext.$nextTxtEle = $(focusedEles["editable"]).next();
        }
        return prevAndNext;
    }
    function mergeTxt(prevAndNext,target){
        // 合并前面的文本
        if(prevAndNext.prevTxt){
            if(target.nodeName=="TEXTAREA" && prevAndNext.$prevTxtEle && prevAndNext.$prevTxtEle[0].tagName=="TEXTAREA"){
                prevAndNext.$prevTxtEle.val(function(){
                    return this.value + prevAndNext.prevTxt;
                });    
            }else{
                // console.log(target);
                var html = (target.nodeName=="TEXTAREA" ? `<textarea
                class="w-100 pl-3 pt-0 pb-0 pr-5"
                rows="1"
                data-type="parag">${prevAndNext.prevTxt}</textarea>`:`<input type="text" class="w-100 h5 pl-3" value="${prevAndNext.prevTxt}" placeholder="添加标题" style="font-weight:bold;" data-type="sm-title"/>`)
                $(html).insertBefore(target);
            }
        }
        
        // 合并后面的文本
        if(prevAndNext.nextTxt){
            if(target.nodeName=="TEXTAREA" && prevAndNext.$nextTxtEle && prevAndNext.$nextTxtEle[0].tagName=="TEXTAREA"){
                prevAndNext.$nextTxtEle.val(function(){
                    return prevAndNext.nextTxt + this.value;
                });    
            }else{
                var html = (target.nodeName=="TEXTAREA" ? `<textarea
                class="w-100 pl-3 pt-0 pb-0 pr-5"
                rows="1"
                data-type="parag">${prevAndNext.nextTxt}</textarea>`:`<input type="text" class="w-100 h5 pl-3" value="${prevAndNext.nextTxt}" placeholder="添加标题" style="font-weight:bold;" data-type="sm-title"/>`)
                $(html).insertAfter(target);
            }
        }
    }
    //绘制选区
    function drawSelected(selectedX,selectedY,selectedWidth,selectedHeight){
        var myCanvas = $("#my-canvas")[0];
        var context = myCanvas.getContext("2d");
        context.clearRect(0,0,myCanvas.width,myCanvas.height);
        context.fillStyle='rgba(0,0,0,0.4)';
        context.fillRect(0,0,myCanvas.width,myCanvas.height);
        context.globalCompositeOperation='destination-out';
        context.fillStyle='#fff';
        context.fillRect(selectedX,selectedY,selectedWidth,selectedHeight);
        context.globalCompositeOperation='source-over';
        context.strokeStyle='#fff';
        context.strokeRect(selectedX,selectedY,selectedWidth,selectedHeight);
    }
    //创建监听
    function createObserver(callback){
        var MutationObserver = window.MutationObserver || window.WebKitMutationObserver || window.MozMutationObserver;
        var observer = new MutationObserver(callback);
        return observer;
    }
    
    //使textarea尺寸自适应
    autosize($("textarea"));

    $("#section").on("keydown",handleKeydown);
    // 鼠标滚动事件
    $(document).on("scroll",fixAside);

    $("body").on("focus","input,textarea",function(){
        focusedEles["prev"] = focusedEles["now"];
        focusedEles["now"] = this;
        // console.log(focusedEles["prev"]);
        // console.log(focusedEles["now"]);
    })
    
    $("#section").on("load", "#section textarea",function(){
        this.focus();
    })
    $("#section").on("focus","textarea,input",function(){ 
        focusedEles["editable"] = this;
        sectionScrollTop = $("#section").scrollTop();
    })
    $("#section").click(function(e){
        // 删除添加的img及相关无用信息
        if(e.target.title=="删除"){
            var $divImg = $(e.target).parent().parent().parent().parent();
            if($divImg.prev()[0] && $divImg.prev()[0].tagName=="TEXTAREA" && $divImg.next()[0] && $divImg.next()[0].tagName=="TEXTAREA"){
                var prevVal = $divImg.prev().val();
                $divImg.prev().remove();
                $divImg.next().val(`${prevVal + $divImg.next().val()}`);

            }
           
            $divImg.remove();
            return;
        }
        // 重置img
        if(e.target.title=="重置"){
            btnA = e.target;
            if($(e.target).parent().prev()[0].tagName=="VIDEO"){
                btnA = e.target;
                $("#fileVideo").trigger("click");
                return;
            }
            if($(e.target).parent().prev()[0].tagName=="IMG"){
                btnA = e.target;
                $("#fileImg").trigger("click");
                return;
            }
            
        }
    })
    $("#section").on("mouseenter",'[data-target="inserted"]',function(){
        $(this).children("div.mask").css("display","block");
    }).on("mouseleave",'[data-target="inserted"]',function(){
        $(this).children("div.mask").css("display","none");
    })
    
    $(".aside input").click(function(e){
        e.stopPropagation();
    })
    $("#arrow").click(function(){
        $(this).toggleClass("icon-arrow_l").toggleClass("icon-arrow-r").parent().next().toggleClass("spread");
    })
    $("#fileImg").change(function(){
        // var fileImg = this;
        if(this.files.length==1){
            var url = window.URL.createObjectURL(this.files[0]);
            var keyWords = "图片";
            imgPreview(url,100,50,(imgObj)=>{
                if(!imgObj){
                    $("#alert1").toggleClass("d-none");
                    $("#pop-alert").toggleClass("d-none");
                    $("#preview").html("");
                    fileImg.value = "";
                    return;
                }
                if(imgObj){
                        var img = this.files[0];
                        var formData = new FormData();
                        formData.append("fileImg", img); 
                        //上传video到服务器
                        $.ajax({
                            type:"post",
                            url:"http://localhost:3001/add_travel/upload_img",
                            data: formData,
                            contentType: false,//必须false才会自动加上正确的Content-Type
                            processData: false,//必须false才会避开jQuery对 formdata 的默认处理 XMLHttpRequest会对 formdata 进行正确的处理
                            success:function(res){
                                var url = res.url;
                                if(!btnA){
                                    var prevAndNext = getPrevAndNext();
                                    // console.log(prevAndNext);
                                    var target = focusedEles.editable;
                                    mergeTxt(prevAndNext,target);
                                    // 替换目标原素
                                    var imgHtml = "";
                                    if(!prevAndNext.prevTxt || !$(target).prev()[0] || ($(target).prev()[0].tagName!=="TEXTAREA" && $(target).prev()[0].tagName!=="INPUT")){
                                        imgHtml += `<textarea
                                        class="w-100 pl-3 pt-0 pb-0 pr-5"
                                        rows="1"
                                        data-type="parag"></textarea>`;
                                    }

                                    imgHtml += `<div>
                            <div class=" d-flex flex-column justify-content-center item">
                                <div class="position-relative text-center mb-3 m-auto"  data-target="inserted">
                                <img src=${url} style="max-width:100%;"/>
                                    <div class="position-absolute p-2 text-left mask">
                                    <a href="javascript:;" class="iconfont icon-delete2 text-warning p-2 m-0" title="删除"></a>
                                    <a href="javascript:;" class="position-relative iconfont icon-reset text-warning p-2 m-0" title="重置">
                                </a>
                                    </div>
                                </div>
                                <div class="m-auto border-bottom">
                                    <span class="text-info p-2 iconfont icon-tubiao"></span>
                                    <input class="p-2"  type="text" placeholder="为${keyWords}添加地点" data-type="spot"/>
                                </div> 
                            </div>
                        </div>
                        `;
                                    if(!prevAndNext.nextTxt || !$(target).next()[0] || ($(target).next()[0].tagName!="TEXTAREA" && $(target).next()[0].tagName!="INPUT")){
                                        imgHtml += `<textarea
                                        class="w-100 pl-3 pt-0 pb-0 pr-5"
                                        rows="1"
                                        data-type="parag"></textarea>`;
                                    }
                                    var $imgHtml = $(imgHtml).replaceAll(target);
                                    if($imgHtml[$imgHtml.length-1].tagName=="TEXTAREA" && !$imgHtml[$imgHtml.length-1].nextElementSibling){
                                        $imgHtml[$imgHtml.length-1].focus();
                                    }else{
                                        // console.log(sectionScrollTop)
                                        $("#section").scrollTop(sectionScrollTop+parseInt(imgObj.imgPreviewHeight));
                                        // console.log(sectionScrollTop+parseInt(imgObj.imgPreviewHeight))
                                        $imgHtml[$imgHtml.length-1].nextElementSibling.focus();
                                        $imgHtml[$imgHtml.length-1].nextElementSibling.selectionEnd = 0;
                                    }
                                    
                                    $("#preview").html("");
                                    fileImg.value = "";
                                }
                                else if(btnA.title=="重置"){
                                    $(btnA).parent().prev().attr("src",`${url}`).parent().width(`${imgObj.imgPreviewWidth}`);
                                    btnA = null;
                                    $("#preview").html("");
                                    fileImg.value = "";
                                    return;
                                } 
                            }
                        })
                }
            });
               
        }
    })
    $("#fileVideo").change(function(){
        var fileVideo = this;
        if(this.files.length==1){
            var video = this.files[0];
            var formData = new FormData();
            formData.append("fileVideo", video); 
            //上传video到服务器
            $.ajax({
                type:"post",
                url:"http://localhost:3001/add_travel/upload_video",
                data: formData,
                contentType: false,//必须false才会自动加上正确的Content-Type
                processData: false,//必须false才会避开jQuery对 formdata 的默认处理 XMLHttpRequest会对 formdata 进行正确的处理
                success:function(res){
                    if(res){
                        var url = res.url;   
                        var keyWords = "视频";
                        var video = `<video src=${url} controls webkit-playsinline="true" playsinline="true" x5-video-player-type="h5" x5-video-player-fullscreen="true" x5-video-orientation="portraint" style="width:${window.innerWidth}px;max-width:500px;" /></video>`;
                        var maxWidth = "500px";
                        
                        if(!btnA){
                            var prevAndNext = getPrevAndNext();
                            // console.log(prevAndNext);
                            var target = focusedEles.editable;
                            mergeTxt(prevAndNext,target);
                            // 替换目标原素
                            var videoHtml = "";
                            if(!prevAndNext.prevTxt || !$(target).prev()[0] || ($(target).prev()[0].tagName!=="TEXTAREA" && $(target).prev()[0].tagName!=="INPUT")){
                                videoHtml += `<textarea
                                class="w-100 pl-3 pt-0 pb-0 pr-5"
                                rows="1"
                                data-type="parag"></textarea>`;
                            }
                            videoHtml += `<div>
                        <div class=" d-flex flex-column justify-content-center item">
                            <div class="position-relative text-center mb-3 m-auto" style="width:${window.innerWidth}px;max-width:${maxWidth};" data-target="inserted">
                            ${video}
                            <div class="position-absolute p-2 text-left mask">
                                <a href="javascript:;" class="iconfont icon-delete2 text-warning p-2 m-0" title="删除"></a>
                                <a href="javascript:;" class="position-relative iconfont icon-reset text-warning p-2 m-0" title="重置">
                            </a>
                            </div>
                            </div>
                            <div class="m-auto border-bottom">
                                <span class="text-info p-2 iconfont icon-tubiao"></span>
                                <input class="p-2"  type="text" placeholder="为${keyWords}添加地点" data-type="spot"/>
                            </div> 
                            <!-- <div class="position-absolute w-100 h-100 border master" style="top:0;left:0;background: rgba(0,0,0,0.3)">
                            123
                            </div> -->
                        </div>
                    </div>`;
                            if(!prevAndNext.nextTxt || !$(target).next()[0] || ($(target).next()[0].tagName!="TEXTAREA" && $(target).next()[0].tagName!="INPUT")){
                                videoHtml += `<textarea
                                class="w-100 pl-3 pt-0 pb-0 pr-5"
                                rows="1"
                                data-type="parag"></textarea>`;
                            }
                            var $videoHtml = $(videoHtml).replaceAll(target);
                            if($videoHtml[$videoHtml.length-1].tagName=="TEXTAREA" && !$videoHtml[$videoHtml.length-1].nextElementSibling){
                                $videoHtml[$videoHtml.length-1].focus();
                            }
                            fileVideo.value = "";
                        }else if(btnA.title=="重置"){
                            $(btnA).parent().prev().replaceWith(`${video}`);
                            btnA = null;
                            fileVideo.value = "";
                            return;
                        }
                    }
                        
                }
            })                     
        }
    })
    $("#btnTitle").click(function(){
        var prevAndNext = getPrevAndNext();
        // console.log(prevAndNext);
        var target = focusedEles.editable;
        mergeTxt(prevAndNext,target);
        // 替换目标原素
        var inputHtml = `<input type="text" class="w-100 h5 pl-3" placeholder="添加标题" style="font-weight:bold;" data-type="sm-title"/>`;
        $(inputHtml).replaceAll(target)[0].focus();
        return;  
    })
    $("#btnTxt").click(function(){
        var prevAndNext = getPrevAndNext();
        // console.log(prevAndNext);
        var target = focusedEles.editable;
        mergeTxt(prevAndNext,target);
        // 替换目标原素
        var textareaHtml = `<textarea
        class="w-100 pl-3 pt-0 pb-0 pr-5"
        rows="1"
        placeholder="添加内容……" data-type="parag"
        ></textarea>`;
        $(textareaHtml).replaceAll(target)[0].focus();
        return;
    })

    $("#insertVideo").click(function(){
        initSection();
        if(!isInsertedable()){
            return;
        }
        $("#fileVideo").trigger("click").trigger("change");
    })
    $("#insertImg").click(function(){
        initSection();
        if(!isInsertedable()){
            return;
        }
        $("#fileImg").trigger("click").trigger("change");   
    })
    $("#insertTitle").click(function(){
        initSection();
        if(!isInsertedable()){
            return;
        }
        $("#btnTitle").trigger("click");
    })
    $("#insertTxt").click(function(){
        initSection();
        if(!isInsertedable()){
            return;
        }
        $("#btnTxt").trigger("click");
    })
    
    
    $("#pop-alert button").click(function(){
        $("#pop-alert").toggleClass("d-none");
        if(!$("#alert1").hasClass("d-none")){
            $("#alert1").addClass("d-none");
        }
        if(!$("#alert2").hasClass("d-none")){
            $("#alert2").addClass("d-none");
        }
        
    })

    $("#headerImg-icon").click(function(){
        $("#headerImg-btn").trigger("click");
    })
    //添加游记头图
    $("#headerImg-btn").change(function(){
        if(this.files.length==1){
            var url = window.URL.createObjectURL(this.files[0]);
            imgPreview(url,270,165,(imgObj)=>{
                //图片大小不符合弹出提示
                if(!imgObj){
                    $("#alert2").toggleClass("d-none");
                    $("#pop-alert").toggleClass("d-none");
                    $("#preview").html("");
                    this.value = null;
                    return;
                }
                //图片大小合适时加载显示图片和选区
                var img = $("#pop-img img")[0];
                $("#pop-img img").attr("src",`${url}`).parent().parent().parent().toggleClass("d-none");
                $("#preview").html("");
                this.value = null;
                //设置选区最大尺寸
                if(img.width/img.height > 270/165){
                    $("#selected-area").css({"width":"270px", "height":"165px", "max-width": `${Math.floor(img.height*270/165)}px`,"max-height": `${img.height}px`});
                }else{
                    $("#selected-area").css({"width":"270px", "height":"165px", "max-width":`${img.width}px`, "max-height":`${Math.floor(img.width*165/270)}px`});
                }
                //设置画布尺寸
                $("#my-canvas").prop("width",img.width).prop("height",img.height);
                //绘制选区
                var sy = $("#selected-area")[0].offsetTop-165/2;
                var sx = $("#selected-area")[0].offsetLeft-270/2;
                drawSelected(sx,sy,270,165);

                //对selected-area选区创建监听
                var observer = createObserver(function(){
                    var width = $("#selected-area")[0].offsetWidth;
                    var height = width*165/270;
                    $("#selected-area").css("height",`${height}px`);
                    var sy = $("#selected-area")[0].offsetTop-height/2;
                    var sx = $("#selected-area")[0].offsetLeft-width/2;
                    drawSelected(sx,sy,width,height);
                });
                observer.observe($("#selected-area")[0],{
                    attributes:true,
                    childList:false,
                    characterData:false
                })
                // console.log(observer);
                //点确定或取消 取消监听
                function btnClickEvent(e){   
                    // 点确定绘制图片
                    if($(e.target).attr("data-target")==="sure"){
                        observer && observer.disconnect();
                        var scale = imgObj.imgPreviewWidth.slice(0,-2)/1500;
                        scale = (scale>1) ? scale : 1;
                        var width = $("#selected-area")[0].offsetWidth;
                        var height = $("#selected-area")[0].offsetHeight;
                        var sy = $("#selected-area")[0].offsetTop-height/2;
                        var sx = $("#selected-area")[0].offsetLeft-width/2;
                        var myCanvas = $("#my-canvas")[0];
                        myCanvas.setAttribute("width",270);
                        myCanvas.setAttribute("height",165);
                        var context = myCanvas.getContext("2d");
                        context.clearRect(0,0,myCanvas.width,myCanvas.height);
                        context.drawImage(img,sx*scale,sy*scale,width*scale,height*scale,0,0,270,165);
                        //上传头图
                        var src = myCanvas.toDataURL("image/png");
                        src = src.replace(/\&/g,"%26");
                        src = src.replace(/\+/g,"%2B");
                        $.ajax({
                            type:"post",
                            url:"http://127.0.0.1:3001/add_travel/add_img",
                            data:"img=" + src,
                            success:function(res){
                                // console.log(res);
                                if(res){
                                    $("#headerImg-icon").html(`<img src="${res.url}"/>`);
                                }
                            }
                        })
                        
                        
                        $("#selected-area").attr("style",null);
                        observer = null;
                        $("#pop-img img").attr("src","");
                        $("#pop-img").toggleClass("d-none");
                        return; 
                    }
                    if($(e.target).attr("data-target")==="cancel"){
                        observer && observer.disconnect();
                        $("#selected-area").attr("style",null);
                        observer = null;
                        $("#pop-img img").attr("src","");
                        $("#pop-img").toggleClass("d-none");
                        return;
                    }                    
                }   
                $("#pop-img [data-target='btn']").one("click",btnClickEvent);

                $("#selected-area").mousedown(function(e){
                    //移动选框
                    if(e.offsetX<this.offsetWidth-20 && e.offsetY<this.offsetHeight-20){                      
                        selectedAreaData.canMove = true;                 
                        selectedAreaData.mouseX = e.clientX;
                        selectedAreaData.mouseY = e.clientY;        
                    }else{
                        //改变选框大小
                    }
                })
                $("#selected-area").mousemove(function(e){
                    var realTop = this.offsetTop-this.offsetHeight/2;
                    var realLeft = this.offsetLeft-this.offsetWidth/2;
                    var realright = img.width - this.offsetLeft-this.offsetWidth/2;
                    var realbottom = img.height -this.offsetTop-this.offsetHeight/2;
                    if (selectedAreaData.canMove) {
                        var deltaX = e.clientX-selectedAreaData.mouseX;
                        var deltaY = e.clientY-selectedAreaData.mouseY;
                        // 鼠标右移
                        if(deltaX>0){
                            if(realright>0){
                                selectedAreaData.canRight = true;
                            }else{
                                selectedAreaData.canRight = false;
                            }
                        }
                        // 鼠标左移
                        if(deltaX<0){
                            if(realLeft>0){
                                selectedAreaData.canLeft = true;
                            }else{
                                selectedAreaData.canLeft = false;
                            }
                        }
                        //鼠标下移
                        if(deltaY>0){
                            if(realbottom>0){
                                selectedAreaData.canDown = true;
                            }else{
                                selectedAreaData.canDown = false;
                            }
                        }
                        //鼠标上移
                        if(deltaY<0){
                            if(realTop>0){
                                selectedAreaData.canUp = true;
                            }else{
                                selectedAreaData.canUp = false;
                            }
                        }
                        //选区位置变化
                        if((deltaX>0 && selectedAreaData.canRight) || (deltaX<0 && selectedAreaData.canLeft)){
                            $(this).css("left",`${deltaX+this.offsetLeft}px`);
                        }    
                        if((deltaY>0 && selectedAreaData.canDown) || (deltaY<0 && selectedAreaData.canUp)){
                            $(this).css("top",`${deltaY+this.offsetTop}px`);
                        }           
                        selectedAreaData.mouseX = e.clientX;
                        selectedAreaData.mouseY = e.clientY;               
                    }
                    
                })
                //selectedAreaData数据恢复初始值
                $("#pop-img").mouseup(function(e){
                    selectedAreaData.canMove = false;
                    selectedAreaData.canDown = false;
                    selectedAreaData.canLeft = false;
                    selectedAreaData.canRight = false;
                    selectedAreaData.canUp = false;
                })

            })
        }     
    })
    
    $("#preview-btn").click(function(){
        //表单disable更改为true
        var spots = $("#section [data-type='spot']");
        for(var i=0;i<spots.length;i++){           
            $(spots[i]).attr("disabled",true);
        }
        var smTitles = $("#section [data-type='sm-title']");
        for(var i=0;i<smTitles.length;i++){         
            $(smTitles[i]).attr("disabled",true);
        }
        var parags = $("#section [data-type='parag']");
        for(var i=0;i<parags.length;i++){            
            $(parags[i]).attr("disabled",true);
        }
        $(this).toggleClass("d-none");
        $("#modify-btn").toggleClass("d-none");
    }) 
    
    $("#modify-btn").click(function(){
        //表单disable更改为false
        var spots = $("#section [data-type='spot']");
        for(var i=0;i<spots.length;i++){
            $(spots[i]).attr("disabled",false);
        }
        var smTitles = $("#section [data-type='sm-title']");
        for(var i=0;i<smTitles.length;i++){
            $(smTitles[i]).attr("disabled",false);
        }
        var parags = $("#section [data-type='parag']");
        for(var i=0;i<parags.length;i++){
            $(parags[i]).attr("disabled",false);
        }
        $(this).toggleClass("d-none");
        $("#preview-btn").toggleClass("d-none");
    })
        
}
function handleKeydown(e){
    if(e.keyCode===8 && (e.target.nodeName=="INPUT" || e.target.nodeName=="TEXTAREA")){
        if(!$(e.target).val()){
            if(($(e.target).next()[0] && ($(e.target).next()[0].tagName=="INPUT" || $(e.target).next()[0].tagName=="TEXTAREA")) || ($(e.target).prev()[0] && ($(e.target).prev()[0].tagName=="INPUT" || $(e.target).prev()[0].tagName=="TEXTAREA"))){
                $(e.target).remove();
                
            }else{
                $(e.target).removeAttr("placeholder");
            }
            return;
        }
        if($(e.target).prev()[0] && $(e.target).prev()[0].tagName==e.target.tagName && e.target.selectionEnd == 0){
            $(e.target).val(`${$(e.target).prev().val()}${$(e.target).val()}`);
            $(e.target).prev().remove();
        }
    }
}
function fixAside(){
    var temp = $("#top")[0]? $("#top")[0].offsetHeight:null;
    if(!temp){
        return;
    }
    temp += 56;
    var scrollTopNew = $(this).scrollTop();
    var translateY = scrollTopNew -temp+43;
    if(translateY<=0){
        $("#alert-insert").css("transform",`translateY(0)`);
        return;
    }
    if(translateY>0){
        $("#alert-insert").css("transform",`translateY(${translateY}px)`);
    }
}
export {addTravel,handleKeydown,fixAside} 