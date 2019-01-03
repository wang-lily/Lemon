<template>
    <div class="app-toast" :class="toastClass">
        {{toastMsg}}
    </div>
</template>
<script>
export default {
    data(){
        return {
            
        }
    },
    props:["toastMsg","toastClass"]
        
    
}
</script>
<style>
    .app-toast{
        border-radius: 5px;
        height:1rem;
        line-height: 0rem;
        /* background:rgba(40, 167, 69, 1); */
        color:#fff;
        /* position: absolute; */
        top: 50%;
        left: 50%;
        transform: translate(-50%,-50%);
        padding:1.5rem;
    }
</style>