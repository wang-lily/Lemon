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
        // console.log(window.getSelection());
        // console.log(window.getSelection().anchorNode);//上一次获取焦点的节点对象
        // var obj = window.getSelection().anchorNode;
        initSection();
        if(this.files.length==1){
            var url = window.URL.createObjectURL(this.files[0]);
            var img = `<img src="${url}" style="opacity:0"/>`;
            $("#load-img").append(img);
            var imgWidth = "";
            var imgHeight = "";
            $(img).load(function(){
                 imgWidth = $("#load-img>img").css("width");
                 imgHeight = $("#load-img>img").css("height");
                 if (imgWidth.slice(0,-2)>=270 && imgHeight.slice(0,-2)>=165){
                    var div = `<div>
                    <div class=" d-flex flex-column justify-content-center item">
                        <div class="position-relative w-100 text-center mb-3">
                          <img src="${url}" alt="" />
                          <div class="position-absolute p-2 text-left mask" style="width:${imgWidth};height:${imgHeight};">
                            <a href="javascript:;" class="iconfont icon-delete2 bg-transparent text-warning m-2" title="删除"></a>
                            <a href="javascript:;" class="position-relative iconfont icon-reset bg-transparent text-warning m-2" title="重置">
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
                    </div>
                    <textarea
                        class="w-100 pl-3 pt-0 pb-0 pr-5"
                        rows="1"
                        placeholder=""
                      ></textarea>
                </div>`;
                    $("#section").append(div);
                    autosize($("textarea"));
                    document.documentElement.scrollTop = 10000;
                    $("#section").scrollTop(10000);
                 }else{
                     $("#pop-mask").toggleClass("d-none");
                 }
                 $("#load-img").html("");
            });
            this.value = "";    
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
    
  })