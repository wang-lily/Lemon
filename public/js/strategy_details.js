$(function(){  
 
    $(window).scroll(function(){
        //当前页面之前已经滚动的页面高度 scrollTop()
         var Height=parseInt($('.strategy_details .details').height()/1.2);

        var scrollTop=Math.ceil($(this).scrollTop());

        if(scrollTop<=Height){
             $('.strategy_details .catalog>h3').css('marginTop',scrollTop+'px');  
        }else{
            return;
        }
        
    })
})


