$(function(){
    $(window).scroll(function(){
        //当前页面之前已经滚动的页面高度 scrollTop()
        var scrollTop=Math.ceil($(this).scrollTop()*1.4);
        console.log(scrollTop)
         $('.strategy_details .catalog>h3').css('marginTop',`${scrollTop}px !important;`);  
    })
})