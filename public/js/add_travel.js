$(function(){
    var focusEditableEle = document.querySelector("#section>textarea:last-child");//存放#section中获得焦点的对象,默认为最后一个textarea；
    //初始化#section的顶部
    function initSection(){
        var $firstTa = $("#section>textarea:nth-child(2)");
        if(!$.trim($firstTa.val())){
            $firstTa.val(" ");
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

    $("#section").on("focus","textarea,input",function(){
        // console.log(this);
        focusEditableEle = this;
        // console.log("获得焦点的元素"+focusEditableEle.selectionEnd);
    })
    $("#section").click(function(e){
        // 删除添加的img及相关无用信息
        if(e.target.title=="删除"){
            var $divImg = $(e.target).parent().parent().parent();
            if (!$.trim($divImg.next().val())){
                $divImg.parent().remove();
            }else{
                $divImg.remove();
            }
            return;
        }
        // 重置img
        if($(e.target).parent().attr("title")=="重置"){
            $(e.target).change(function(){
                
            })
            
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
    $("#insertImg").change(function(){
        initSection();
        if(this.files.length==1){
            var url = window.URL.createObjectURL(this.files[0]);
            var imgPreview = `<img src="${url}" style="opacity:0"/>`;
            var img = `<img src="${url}" alt="" />`;
            var keyWords = "图片";
            $("#preview").append(imgPreview);
            var imgPreviewWidth = "";
            var imgPreviewHeight = "";
            $(img).load(function(){
                 imgPreviewWidth = $("#preview>img").css("width");
                 imgPreviewHeight = $("#preview>img").css("height");
                 if (imgPreviewWidth.slice(0,-2)>=100 && imgPreviewHeight.slice(0,-2)>=50){
                    var div = `<div>
                    <div class=" d-flex flex-column justify-content-center item">
                        <div class="position-relative text-center mb-3 m-auto" style="width:${imgPreviewWidth};" data-target="inserted">
                          ${img}
                          <div class="position-absolute p-2 text-left mask">
                          <a href="javascript:;" class="iconfont icon-delete2 text-warning p-2 m-0" title="删除"></a>
                          <a href="javascript:;" class="position-relative iconfont icon-reset text-warning p-2 m-0" title="重置">
                          <input accept="image/*"
                          class="position-absolute hide-input"
                          type="file">
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
                <textarea
                class="w-100 pl-3 pt-0 pb-0 pr-5"
                rows="1"
              ></textarea>`;
                    $("#section").append(div);
                    autosize($("textarea"));
                    document.documentElement.scrollTop = 10000;
                    $("#section").scrollTop(10000);
                 }else{
                     $("#pop-mask").toggleClass("d-none");
                 }
                 $("#preview").html("");
            });
            this.value = "";    
        }
    })
    $("#insertVideo").change(function(){
        initSection();
        if(this.files.length==1){
            var url = window.URL.createObjectURL(this.files[0]);
            var video = `<video src="${url}" controls webkit-playsinline="true" playsinline="true" x5-video-player-type="h5" x5-video-player-fullscreen="true" x5-video-orientation="portraint" style="width:${window.innerWidth}px;max-width:500px;" /></video>`;
            var keyWords = "视频";
            var maxWidth = "500px";
            var div = `<div>
            <div class=" d-flex flex-column justify-content-center item">
                <div class="position-relative text-center mb-3 m-auto" style="width:${window.innerWidth}px;max-width:${maxWidth};" data-target="inserted">
                ${video}
                  <div class="position-absolute p-2 text-left mask">
                    <a href="javascript:;" class="iconfont icon-delete2 text-warning p-2 m-0" title="删除"></a>
                    <a href="javascript:;" class="position-relative iconfont icon-reset text-warning p-2 m-0" title="重置">
                  <input accept="image/*,video/*"
                  class="position-absolute hide-input"
                  type="file" data-target="reset"/>
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
        <textarea
        class="w-100 pl-3 pt-0 pb-0 pr-5"
        rows="1"
      ></textarea>`;     
            $("#section").append(div);
            autosize($("textarea"));
            document.documentElement.scrollTop = 10000;
            $("#section").scrollTop(10000); 
            this.value = "";   
        }
    })
    $("#insertImg").click(function(){
        if(focusEditableEle.nodeName != "TEXTAREA" && focusEditableEle.getAttribute("placeholder")!="添加标题"){
            // console.log(focusEditableEle);
            return;
        }
        // console.log(focusEditableEle);
        var cursePos = focusEditableEle.selectionEnd;
        var prevTxt = focusEditableEle.value.slice(0,cursePos);
        var nextTxt = focusEditableEle.value.slice(cursePos,focusEditableEle.value.length);
        console.log("prevTxt"+prevTxt);
        console.log("nextTxt"+nextTxt);
        // 获取ta相邻的前一个为可编辑（textarea，input）的元素
        if($(focusEditableEle).prev()[0] && ($(focusEditableEle).prev()[0].tagName=="TEXTAREA" || $(focusEditableEle).prev()[0].tagName=="INPUT")){
           var  $prevEle = $(focusEditableEle).prev();
        }else{
            var $prevEle = null;
        }
        // 获取ta相邻的下一个为可编辑（textarea，input）的元素
        if($(focusEditableEle).next()[0] && ($(focusEditableEle).next()[0].tagName=="TEXTAREA" || $(focusEditableEle).next()[0].tagName=="INPUT")){
            var $nextEle = $(focusEditableEle).next();
        }else{
            var $nextEle = null;
        }
        if($prevEle){
            console.log(`prevEle:${$prevEle.html() || $prevEle.val()}`);
        }
        if($nextEle){
            console.log(`nextEle:${$prevEle.html() || $nextEle.val()}`);
        }
    })
    $("#insertTitle").click(function(){
        initSection();
        var input = `<input type="text" class="w-100 h5 pl-3" placeholder="添加标题" style="font-weight:bold;"/>`;
        $("#section").append(input);
        
    })
    $("#insertTxt").click(function(){
        initSection();
        var textarea = `<textarea
        class="w-100 p-3 pr-5"
        rows="1"
        placeholder="添加内容……"
        ></textarea>`;
        $("#section").append(textarea);
        autosize($("textarea"));
    })
    $("#pop-mask button").click(function(){
        $("#pop-mask").toggleClass("d-none");
    })
    
    
    
    
  })