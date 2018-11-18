// region JQ 简单轮播
// $(function(){
//     function task(){
//         var $lunbo =  $("#header>[data-trigger=lunbo]");
//         var $item = $lunbo.find(".in");
//         if($item.next().parent().is($lunbo)){
//             $item.removeClass("in").next().addClass("in");
//         }else{
//             $item.removeClass("in");
//             $lunbo.children(":first-child").addClass("in");
//         }
//     }
//     var timer = setInterval(task, 3000);
//     $("#header").mouseenter(function(){
//             clearInterval(timer);
//         }).mouseleave(function(){
//             timer = setInterval(task, 3000);
//     })
// })
// endregion


// region JS 轮播
window.onload = function(){
    var lunbo = document.querySelector("[data-trigger = lunbo]");
    var lunboItems = document.querySelectorAll("[data-target = lunboItem]");
    function task(){
        var i = 0;
        while(true){
            if( i==lunboItems.length || lunboItems[i].className.indexOf("in") != -1){
                break;
            }
            i++;
        }
        if(i == lunboItems.length){
            i = 0;
            lunboItems[i].className += "in";
        }
        lunboItems[i].className = lunboItems[i].className.replace("in","out");
        if(i == lunboItems.length-1){
            i=0;
        }else {
            i++;
        }
        lunboItems[i].className = lunboItems[i].className.replace("out","in");
    }
    var timer = setInterval(task, 3000);
    var header = lunbo.parentElement;
    header.onmouseover = function(){
        clearInterval(timer);
    }
    header.onmouseout = function () {
        timer = setInterval(task, 3000);
    }
}
// endregion