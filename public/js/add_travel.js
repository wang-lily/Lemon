$(function(){
    $("#arrow").click(function(){
        $(this).toggleClass("icon-arrow_l").toggleClass("icon-arrow-r").parent().next().toggleClass("spread");
    })

    $("#tarea").scroll(function(){
        this.rows++;
        this.offsetX>0;
    })
    
  })