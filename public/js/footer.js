
$(function(){
    $("<link rel='stylesheet' href='../css/footer.css'>").appendTo("head");
    $.ajax({
        url: "http://localhost:3001/views/footer.html",
        type: "get",
        success: function (res) {
            $(res).replaceAll("footer");
        }
    })
})