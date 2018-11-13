window.onload = function () {
    tabToggle();
    carousel_task();
    window.onresize=function(){
        iFrameHeight();
    }
    
    
}
function tabToggle() {
    var oTab = document.getElementById('tab_menu');
    var aLi = oTab.getElementsByTagName('li');
    var aBox = document.querySelectorAll('.tab_box>div');
    for (var i = 0; i < aLi.length; i++) {
        aLi[i].index = i;
        aLi[i].onclick = function () {
            for (var j = 0; j < aLi.length; j++) {
                aBox[j].className = 'hide';//隐藏所有的tabDiv
            }
            aBox[this.index].className = '';
        }
    }
}


function  carousel_task(){
    var index =timer=0,imgObject;    
    var img1 = ["../img/carousel/lb01.png", "../img/carousel/lb09.png",
     "../img/carousel/lb03.png",  "../img/carousel/lb04.png",
     "../img/carousel/lb05.png"];
    imgObject = document.getElementsByClassName("carousel_item")[0];
    timer = setInterval(function () {
        index++;
        if (index > img1.length - 1) {
            index = 0;
        }
        imgObject.src = img1[index];
    }, 2000)
}

function iFrameHeight() {
	var ifm= document.getElementById("iframeId");
        var subWeb = document.frames ? 
        document.frames["iframeId"].document : ifm.contentDocument;
		if(ifm != null && subWeb != null) {
			ifm.style.height = 'auto';//关键这一句，先取消掉之前iframe设置的高度
            ifm.style.height = subWeb.body.scrollHeight+'px';
            console.log(ifm.style.height);
		}
	};

