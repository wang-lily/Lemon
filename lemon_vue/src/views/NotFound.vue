<template>
    <div class="notFound">
            <router-link to='/'>返回首页</router-link>        
    </div>
</template>
<script>
    export default{
        data(){
            return{

            }
        },
        methods:{

        },

    }
</script>
<style>
.notFound{
    position: relative;
    width: 100%;
    height: 100%;
    background: url('../assets/background/notfound.png') center; 
}
    .notFound a{
         position: absolute;
         display: block;
         top:70%;
         left: 50%;
         transform: translateX(-50%);
         padding:4px 8px;
         background: #FEB527;
         border-radius: 4px;
         text-decoration: none;
         color: #fff;
    }
</style>