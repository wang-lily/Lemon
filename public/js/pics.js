$(function(){
    init();
    $(window).on('resize',function(){//重新加载
        init();
    });
})
 
function init(){   
    var maxBoxHeight;
    // 获取每个小盒子的宽度 包括margin、padding、border
    var boxWidth=$(".pics  .pics_wall .item").outerWidth(true);
    // 获取列数
    var cols=parseInt($('.pics .container').width()/boxWidth);
    //建一个长度与列数相等的数组 用于记录每一列对应的高度
    var heightArr=[];
    for(var i=0;i<cols;i++){
        heightArr.push(0);
    };
 
    //遍历每一张图片
    $(".pics  .pics_wall .item").each(function(index,item) {
        //记录最小高度的列索引
        var idx=0;  
        // 获取最小\最大高度
        var minBoxHeight=heightArr[0];
        maxBoxHeight=heightArr[0];
        for(var i=0;i<heightArr.length;i++){
            if(heightArr[i]<minBoxHeight){
                minBoxHeight=heightArr[i];
                //得到此时最小高度的列索引
                idx=i; 
            } 
            //得到此时最大高度
            if(heightArr[i]>maxBoxHeight){
                maxBoxHeight=heightArr[i]; 
            }   
        
        };
        // 设置图片的样式
        $(item).css({
            left:boxWidth*idx,
            top:minBoxHeight
        });
          
        heightArr[idx]+=$(item).outerHeight(true);
        //设置container的高度
           $('.pics  .pics_wall').height(maxBoxHeight);
    });
};
