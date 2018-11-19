$(function(){
    var curItem=0; 
    var len = $(".list-left ul li").length;    console.log(len) 
    $(".list-right>div").eq(0).show().siblings().hide();
    console.log($(".list-right>div"));
    function autoPlay(){
        curItem++;   
        if(curItem > len-1){
            curItem = 0;   
        };
        $(".list-left ul li").eq(curItem).addClass("list_cutLi")
                        .siblings("li").removeClass("list_cutLi");   //左模块选中添加样式
        $(".list-right .card").eq(curItem).show().siblings().hide();
    };
    setInterval(autoPlay,2000);
});