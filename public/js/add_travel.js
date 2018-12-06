$(function(){
    
    autosize($("textarea"));
    
    // 鼠标滚动事件
    $(window).scroll(function(){
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

    $("#arrow").click(function(){
        $(this).toggleClass("icon-arrow_l").toggleClass("icon-arrow-r").parent().next().toggleClass("spread");
    })
    function initSection(){
        var $firstTa = $("#section>textarea:nth-child(2)");
        if(!$.trim($firstTa.val())){
            $firstTa.val(" ");
        }
    }
    $("#insertImg").change(function(){
        initSection();
        if(this.files.length==1){
            var url = window.URL.createObjectURL(this.files[0]);
            var img = `<img src="${url}" style="opacity:0"/>`;
            $("#preview").append(img);
            var imgWidth = "";
            var imgHeight = "";
            $(img).load(function(){
                 imgWidth = $("#preview>img").css("width");
                 imgHeight = $("#preview>img").css("height");
                 if (imgWidth.slice(0,-2)>=100 && imgHeight.slice(0,-2)>=50){
                    var div = `<div>
                    <div class=" d-flex flex-column justify-content-center item">
                        <div class="position-relative text-center mb-3 m-auto" style="${imgWidth}" data-target="inserted">
                          <img src="${url}" alt="" />
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
                            <input class="p-2"  type="text" placeholder="为图片添加地点"/>
                        </div> 
                        <!-- <div class="position-absolute w-100 h-100 border master" style="top:0;left:0;background: rgba(0,0,0,0.3)">
                          123
                        </div> -->
                    </div><div>
                    <textarea
                        class="w-100 pl-3 pt-0 pb-0 pr-5"
                        rows="1"
                      ></textarea></div>
                </div>`;
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
            var div = `<div>
            <div class=" d-flex flex-column justify-content-center item">
                <div class="position-relative text-center mb-3 m-auto" style="width:500px;" data-target="inserted">
                <video src="${url}" controls style="width:500px;" /></video>
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
                    <input class="p-2"  type="text" placeholder="为图片添加地点"/>
                </div> 
                <!-- <div class="position-absolute w-100 h-100 border master" style="top:0;left:0;background: rgba(0,0,0,0.3)">
                  123
                </div> -->
            </div><div>
            <textarea
                class="w-100 pl-3 pt-0 pb-0 pr-5"
                rows="1"
              ></textarea></div>
        </div>`;     
            $("#section").append(div);
            autosize($("textarea"));
            document.documentElement.scrollTop = 10000;
            $("#section").scrollTop(10000); 
            this.value = "";   
        }
    })
    $("#insertImg").click(function(){
        var selector = getSelection();//获取被选中的区域
        var children  = selector.focusNode.children;
        if(children.length==1 && children[0].nodeName=="TEXTAREA"){
            var ta = selector.focusNode.children[0];//获得内部的teatarea
            var cursePos = ta.selectionEnd;//获得光标所在的位置
            // console.log(cursePos);
            var prev = ta.value.slice(0,cursePos);
            var next = ta.value.slice(cursePos,ta.value.length);
            // console.log(prev);
            // console.log(next);
            $(children[0]).parent().html(`<div><textarea id="ta1"
            class="w-100 pt-0 pb-0 pl-3 pr-5"
            rows="1"
          >${prev}</textarea></div><div><textarea id="ta1"
          class="w-100 pt-0 pb-0 pl-3 pr-5"
          rows="1"
        >${next}</textarea></div>`)
        } 
    })
    $("#insertTitle").click(function(){
        initSection();
        var input = `<input type="text" class="w-100 h5 pl-3" placeholder="添加标题"/>`;
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

            // var $img = $(e.target).parent().parent().prev().attr("src","url");
        }
    })
    $("#section").on("mouseenter",'[data-target="inserted"]',function(){
        console.log($(this).next());
        $(this).children("div:last").css("display","block");
    }).on("mouseleave",'[data-target="inserted"]',function(){
        $(this).children("div:last").css("display","none");
    })
    
    
  })