<template>
      <!-- 回到顶部 -->
        <div class="footerBox">
            <ul>
                <li class="toTop">
                    <i class="iconfont icon-shouqi"></i>
                </li>
                <li>
                    <i class="iconfont icon-dianping"></i>
                </li>
                <li>
                    <i class="iconfont icon-fenxiang1"></i>
                </li>
            </ul>
        </div>
</template>
<script>
import $ from 'jquery'
import {toTop} from '../../src/assets/js/index.js'
    export default {
        data(){
            return {
               
            }
        },
        methods:{
            
        },
        mounted() {
            toTop();
        }
    }
</script>
<style>
    /* toTop */
.footerBox{
    position: fixed;
    bottom: 1.4rem;
    right:1.4rem;
    z-index: 99;
}
.footerBox li{
    display: block;
    width: 4rem;
    height:4rem;
    text-align: center;
    line-height:4rem;
    background: #fff;
    border: 1px solid #b4b4b4;
}
.footerBox li:first-child{
    display: none;
    border-bottom: none;
}
.footerBox li:nth-child(2){
    border-bottom: none;
}
.footerBox li:hover{
    background: rgba(0, 0, 0, .1);
}

 @media screen and (max-width:375px){
    .footerBox li{
        display: block;
        width: 1.8rem;
        height:1.8rem;
        text-align: center;
        line-height:2rem;
        background: #fff;
        border: 1px solid #b4b4b4;
    } 
}

@media screen and (min-width:375px) and (max-width:768px){
    .footerBox li{
        display: block;
        width: 2.2rem;
        height:2.2rem;
        text-align: center;
        line-height:2rem;
        background: #fff;
        border: 1px solid #b4b4b4;
    }
}
</style>