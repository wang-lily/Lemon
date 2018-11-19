
$(function(){
    $("<link rel='stylesheet' href='../css/header.css'>").appendTo("head");
    $.ajax({
        url: "http://localhost:3001/views/header.html",
        type: "get",
        success: function (res) {
            $(res).replaceAll("header");
            //header-nav事件--start
//导航按钮事件
            var navIcon = document.querySelector("[data-trigger=navIcon]");
            navIcon.onclick = function() {
                var dataStatus = this.getAttribute("data-status");
                if(dataStatus == 0){
                    //导航按钮变化
                    this.children[0].style.animation = "topChange0 0.5s linear forwards";
                    this.children[1].style.animation = "bottomChange0 0.5s linear forwards";
                    this.setAttribute("data-status", 1);
                    //下拉选项框变化
                    var target = document.querySelector("[data-target=collapse_navbar]");
                    target.className = target.className.replace("collapse-navbar-0","collapse-navbar-1");
                    return;
                }
                if(dataStatus == 1){
                    this.children[0].style.animation = "topChange1 0.5s linear forwards";
                    this.children[1].style.animation = "bottomChange1 0.5s linear forwards";
                    this.setAttribute("data-status", 0);
                    //下拉选项框变化
                    var target = document.querySelector("[data-target=collapse_navbar]");
                    target.className = target.className.replace("collapse-navbar-1","collapse-navbar-0");
                    console.log(target.className);
                    return;
                }
            }
//搜索icon事件
            var searchIcon = document.querySelector("[data-trigger=searchIcon]");
            searchIcon.onclick = function(){
                //导航栏样式变化
                // var target1 = document.getElementById("collapse-navbar");
                // target1.className = target1.className.replace("d-sm-inline-flex justify-content-sm-around align-items-sm-center", "d-sm-none");
                // var target2 = document.getElementById("searchForm");
                // target2.className = target2.className.concat(" d-sm-inline-flex");
                //弹出搜索栏
                var  searchPage = document.getElementById("search-page");
                searchPage.style.display = "block";
            }
//header-nav事件--end

//search-page搜索栏--start
// 关闭icon事件
            var closeIcon = document.getElementById("close-icon");
            closeIcon.onclick = function () {
                var  searchPage = document.getElementById("search-page");
                searchPage.style.display = null;
            }
//search-address事件
            var searchAddress = document.getElementById("search-address");
            searchAddress.onclick = function () {
                var target = document.querySelector("#search-page [data-target=content]");
                target.className = target.className.replace("d-none","");
                this.style.border = "1px solid rgba(40, 167, 69, 0.7)";
                this.children[1].focus();
                this.parentNode.nextElementSibling.children[0].style = null;
            }
            var searchAddressInput = searchAddress.children[1];
            searchAddressInput.onfocus =function () {
                console.log(searchAddress.nextElementSibling)
                searchAddress.nextElementSibling.className = searchAddress.nextElementSibling.className.replace("d-none", "");
            }
            searchAddressInput.onblur =function () {
                searchAddress.nextElementSibling.className = searchAddress.nextElementSibling.className.concat(" d-none");
                console.log(searchAddress.nextElementSibling
                    .className);
            }

//search-all事件
            var searchAll = document.getElementById("search-all");
            searchAll.onclick = function () {
                this.style.border = "1px solid rgba(40, 167, 69, 0.7)";
                this.children[1].focus();
                this.parentNode.previousElementSibling.children[0].style = null;
            }
//search-page搜索栏--end
        }
    })
})

