$(function(){
    var focusedEles = {
        "editable": document.querySelector("#section>textarea:last-child"),//存放#section中获得焦点的对象,默认为最后一个textarea；
        "prev":null,
        "now":null,
        "target":null
    };

    //初始化#section的顶部
    function initSection(){
        if($("#section").children().length < 2){
            var textareaHtml = `<textarea id="fjdk"
                                class="w-100 pl-3 pt-0 pb-0 pr-5"
                                rows="1"
                              ></textarea>`;
            $("#section").append(textareaHtml);
        }
        var firstTa = $("#section").children()[1];
        if(!$.trim(firstTa.value)){
            $(firstTa).val(" ");
        }
    }
    // img预加载
    function imgPreview(url,callback){
        var imgPreview = `<img src="${url}" style="opacity:0"/>`;
        var img = `<img src="${url}" alt="" />`;
        // var keyWords = "图片";
        $("#preview").append(imgPreview);
        var imgPreviewWidth = "";
        var imgPreviewHeight = "";
        var imgObj = null;
        $(imgPreview).load(function(){
            imgPreviewWidth = $("#preview>img").css("width");
            imgPreviewHeight = $("#preview>img").css("height");
            if (imgPreviewWidth.slice(0,-2)>=100 && imgPreviewHeight.slice(0,-2)>=50){
                imgObj = {img,imgPreviewWidth};
            }
            callback(imgObj);
        });
    }

    function isInsertedable(){
        // console.log(focusedEles);
        if(focusedEles["now"]!==focusedEles["editable"]){
            console.log("不在可编辑区"); 
            // console.log(focusedEles["prev"]);
            // console.log(focusedEles["now"]);
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
        // console.log(focusedEles["editable"]);
        var cursePos = focusedEles["editable"].selectionEnd;
        prevAndNext.prevTxt = focusedEles["editable"].value.slice(0,cursePos);
        prevAndNext.nextTxt = focusedEles["editable"].value.slice(cursePos,focusedEles["editable"].value.length);
        // console.log("prevAndNext.prevTxt"+prevAndNext.prevTxt);
        // console.log("prevAndNext.nextTxt"+prevAndNext.nextTxt);
        // 获取ta相邻的前一个为可编辑（textarea，input）的元素
        if($(focusedEles["editable"]).prev()[0] && ($(focusedEles["editable"]).prev()[0].tagName=="TEXTAREA" || $(focusedEles["editable"]).prev()[0].tagName=="INPUT")){
            prevAndNext.$prevTxtEle = $(focusedEles["editable"]).prev();
        }
        // 获取ta相邻的下一个为可编辑（textarea，input）的元素
        if($(focusedEles["editable"]).next()[0] && ($(focusedEles["editable"]).next()[0].tagName=="TEXTAREA" || $(focusedEles["editable"]).next()[0].tagName=="INPUT")){
            prevAndNext.$nextTxtEle = $(focusedEles["editable"]).next();
        }
        // if(prevAndNext.$prevTxtEle){
        //     console.log(`prevEle:${prevAndNext.$prevTxtEle.html() || prevAndNext.$prevTxtEle.val()}`);
        // }
        // if(prevAndNext.$nextTxtEle){
        //     console.log(`nextEle:${prevAndNext.$nextTxtEle.html() || prevAndNext.$nextTxtEle.val()}`);
        // }
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
            >${prevAndNext.prevTxt}</textarea>`:`<input type="text" class="w-100 h5 pl-3" value="${prevAndNext.prevTxt}" placeholder="添加标题" style="font-weight:bold;"/>`)
                $(html).insertBefore(target);
            }
            autosize($("textarea"));
        }
        
        // 合并后面的文本
        if(prevAndNext.nextTxt){
            if(target.nodeName=="TEXTAREA" && prevAndNext.$nextTxtEle && prevAndNext.$nextTxtEle[0].tagName=="TEXTAREA"){
                prevAndNext.$nextTxtEle.val(function(){
                    return prevAndNext.nextTxt + this.value;
                });    
            }else{
                // console.log(target);
                var html = (target.nodeName=="TEXTAREA" ? `<textarea
                class="w-100 pl-3 pt-0 pb-0 pr-5"
                rows="1"
            >${prevAndNext.nextTxt}</textarea>`:`<input type="text" class="w-100 h5 pl-3" value="${prevAndNext.nextTxt}" placeholder="添加标题" style="font-weight:bold;"/>`)
                $(html).insertAfter(target);
            }
            autosize($("textarea"));
        }
    }

    // 鼠标滚动事件
    $(document).scroll(function(){
        var temp = $("#top").css("height").slice(0,-2);
        var scrollTopNew = $(this).scrollTop();
        var translateY = scrollTopNew -temp+43;
        if(translateY<=0){
            $("#alert-insert").css("transform",`translateY(0)`);
            return;
        }
        if(translateY>0){
            $("#alert-insert").css("transform",`translateY(${translateY}px)`);
        }
    })
    //使textarea尺寸自适应
    autosize($("textarea"));

    $("body").on("focus","input,textarea",function(){
        focusedEles["prev"] = focusedEles["now"];
        focusedEles["now"] = this;
        // console.log(focusedEles["prev"]);
        // console.log(focusedEles["now"]);
    })
    $("#section").on("focus","textarea,input",function(){
        // $(".aside input").toggleClass("d-none").parent().toggleClass("btn-shadow");
        // console.log(this);
        focusedEles["editable"] = this;
        // console.log("获得焦点的可编辑元素"+focusedEles["editable"].selectionEnd);
    })
    $("#section").click(function(e){
        // 删除添加的img及相关无用信息
        if(e.target.title=="删除"){
            var $divImg = $(e.target).parent().parent().parent().parent();
            if($divImg.prev()[0] && $divImg.prev()[0].tagName=="TEXTAREA" && $divImg.next()[0] && $divImg.next()[0].tagName=="TEXTAREA"){
                var prevVal = $divImg.prev().val();
                $divImg.prev().remove();
                $divImg.next().html(`${prevVal + $divImg.next().html()}`).load(function(){
                    autosize($("textarea"));
                });
                // console.log($divImg.next().html());
            }
            if (!$.trim($divImg.next().val())){
                $divImg.next().remove();
            }
            $divImg.remove();
            return;
        }
        // 重置img
        if(e.target.title=="重置"){
            focusedEles["target"] = e.target;
            if($(e.target).parent().prev()[0].tagName=="VIDEO"){
                focusedEles["target"] = e.target;
                $("#fileVideo").trigger("click");
                return;
            }
            if($(e.target).parent().prev()[0].tagName=="IMG"){
                focusedEles["target"] = e.target;
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
    

    $("#arrow").click(function(){
        $(this).toggleClass("icon-arrow_l").toggleClass("icon-arrow-r").parent().next().toggleClass("spread");
    })
    $("#fileImg").change(function(){
        var fileImg = this;
        if(this.files.length==1){
            var url = window.URL.createObjectURL(this.files[0]);
            var keyWords = "图片";
                imgPreview(url,function(imgObj){
                    if(!imgObj){
                        $("#pop-mask").toggleClass("d-none");
                        $("#preview").html("");
                        fileImg.value = "";
                        return;
                    }
                    if(imgObj){
                        if(!focusedEles["target"]){
                            var prevAndNext = getPrevAndNext();
                            // console.log(prevAndNext);
                            var target = focusedEles.editable;
                            mergeTxt(prevAndNext,target);
                            // 替换目标原素
                            var imgHtml = "";
                            if(!prevAndNext.prevTxt || !$(target).prev()[0] || $(target).prev()[0].tagName!=="TEXTAREA"){
                                imgHtml += `<textarea
                                class="w-100 pl-3 pt-0 pb-0 pr-5"
                                rows="1"
                              ></textarea>`;
                            }
                            imgHtml += `<div>
                    <div class=" d-flex flex-column justify-content-center item">
                        <div class="position-relative text-center mb-3 m-auto"  data-target="inserted">
                          ${imgObj.img}
                          <div class="position-absolute p-2 text-left mask">
                          <a href="javascript:;" class="iconfont icon-delete2 text-warning p-2 m-0" title="删除"></a>
                          <a href="javascript:;" class="position-relative iconfont icon-reset text-warning p-2 m-0" title="重置">
                        </a>
                          </div>
                        </div>
                        <div class="m-auto border-bottom">
                            <span class="text-info p-2 iconfont icon-tubiao"></span>
                            <input class="p-2"  type="text" placeholder="为${keyWords}添加地点"/>
                        </div> 
                        <!-- <div class="position-absolute w-100 h-100 border master" style="top:0;left:0;background: rgba(0,0,0,0.3)">
                          123
                        </div> -->
                    </div>
                </div>
                `;
                            if(!prevAndNext.nextTxt || !$(target).next()[0] || $(target).next()[0].tagName!="TEXTAREA"){
                                imgHtml += `<textarea
                                class="w-100 pl-3 pt-0 pb-0 pr-5"
                                rows="1"
                              ></textarea>`;
                            }
                            // console.log(!prevAndNext.nextTxt || !$(target).next()[0] || $(target).next()[0].tagName!="TEXTAREA");
                            $(target).replaceWith(imgHtml);
                            autosize($("textarea"));

                            $(imgHtml).on("load",'div[data-target="inserted"]',function(){
                                $(this).css("width",`${imgObj.imgPreviewWidth}`);
                            })
                            $("#preview").html("");
                            fileImg.value = "";
                            return;
                        }
                        else if(focusedEles["target"].title=="重置"){
                            $(focusedEles["target"]).parent().prev().replaceWith(`${imgObj.img}`).parent().width(`${imgObj.imgPreviewWidth}`);
                            focusedEles["target"] = null;
                            $("#preview").html("");
                            fileImg.value = "";
                            return;
                        } 
                    }
                });
                
//-----------------------------------------------------------------------------

            //         document.documentElement.scrollTop = 10000;
            //         $("#section").scrollTop(10000);
            //      }
            // });    
        }
    })
    $("#fileVideo").change(function(){
        var fileVideo = this;
        if(this.files.length==1){
            var url = window.URL.createObjectURL(this.files[0]);
            var keyWords = "视频";
            var video = `<video src="${url}" controls webkit-playsinline="true" playsinline="true" x5-video-player-type="h5" x5-video-player-fullscreen="true" x5-video-orientation="portraint" style="width:${window.innerWidth}px;max-width:500px;" /></video>`;
            var maxWidth = "500px";
            
            if(!focusedEles["target"]){
                var prevAndNext = getPrevAndNext();
                // console.log(prevAndNext);
                var target = focusedEles.editable;
                mergeTxt(prevAndNext,target);
                // 替换目标原素
                var videoHtml = "";
                if(!prevAndNext.prevTxt || !$(target).prev()[0] || $(target).prev()[0].tagName!=="TEXTAREA"){
                    videoHtml += `<textarea
                    class="w-100 pl-3 pt-0 pb-0 pr-5"
                    rows="1"
                ></textarea>`;
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
                    <input class="p-2"  type="text" placeholder="为${keyWords}添加地点"/>
                </div> 
                <!-- <div class="position-absolute w-100 h-100 border master" style="top:0;left:0;background: rgba(0,0,0,0.3)">
                  123
                </div> -->
            </div>
        </div>`;
                if(!prevAndNext.nextTxt || !$(target).next()[0] || $(target).next()[0].tagName!="TEXTAREA"){
                    videoHtml += `<textarea
                    class="w-100 pl-3 pt-0 pb-0 pr-5"
                    rows="1"
                    ></textarea>`;
                }
                $(target).replaceWith(videoHtml);
                autosize($("textarea"));
                fileVideo.value = "";
            }else if(focusedEles["target"].title=="重置"){
                $(focusedEles["target"]).parent().prev().replaceWith(`${video}`);
                focusedEles["target"] = null;
                fileVideo.value = "";
                return;
            }
            // $("#section").append(div);
            // autosize($("textarea"));
            // document.documentElement.scrollTop = 10000;
            // $("#section").scrollTop(10000);   
        }
    })
    $("#btnTitle").click(function(){
        var prevAndNext = getPrevAndNext();
        // console.log(prevAndNext);
        var target = focusedEles.editable;
        mergeTxt(prevAndNext,target);
        // 替换目标原素
        var inputHtml = `<input type="text" class="w-100 h5 pl-3" placeholder="添加标题" style="font-weight:bold;"/>`;
        $(target).replaceWith(inputHtml);
        autosize($("textarea"));
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
        placeholder="添加内容……"
        ></textarea>`;
        $(target).replaceWith(textareaHtml);
        autosize($("textarea"));
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
    
    
    $("#pop-mask button").click(function(){
        $("#pop-mask").toggleClass("d-none");
    })
    
    
    
    
  })