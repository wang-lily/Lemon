

function getSpotsEffect(){
    var lunbo = document.querySelector("[data-trigger = lunbo]");
    var lunboItems = document.querySelectorAll("[data-target = lunboItem]");
    
    var timer = setInterval(task, 3000);
    var header = lunbo.parentElement;
    header.onmouseover = function(){
        clearInterval(timer);
    }
    header.onmouseout = function () {
        timer = setInterval(task, 3000);
    }

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
        console.log(lunboItems[i]);
    }
    return task;
}

export {getSpotsEffect}