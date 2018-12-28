<template>
    <div id="content" class="pt-4 pl-2 pr-2 container">
        <div class="row ml-0 mr-0 mb-3 item"  v-for="(item,i) of list" :key="i" @mouseenter="changeActiveIndex(i)" @mouseleave="changeActiveIndex('')">
            <div class="col-auto h-100 pr-1 pl-0">
                <img class="img-fluid h-100 p-0" :src="item.headerImg" >
            </div>
            <div class="col h-100 p-0 ml-1">
                <p class="w-100 m-0 title pt-2" :class="activeIndex===i?'text-warning':''">{{item.title}}</p>
                <p class="w-100 p-1 m-0 desc">
                   {{item.describle}}
                </p>
                <div class="row align-items-end text-muted m-0">
                    <div class="col text-left p-0">
                        <span>{{new Date().toLocaleDateString()}}</span>
                        <span class="d-none d-sm-inline">&nbsp;{{item.uname || "匿名"}}&nbsp;&nbsp;</span>
                        <span class="iconfont icon-browse">&nbsp;</span>
                        <span >{{item.tview}}</span>
                    </div>
                    <div class="col-auto text-right p-0 mr-2">
                        <span class="iconfont icon-love ">&nbsp;</span>
                        <span>{{item.zan}}</span>
                    </div>  
                </div>
            </div>
        </div>
    </div>   
</template>
<script>
export default {
    data(){
        return{
            list:["","","","","",""],
            activeIndex:""
        }
    },
    props:{
        state:Object
    },
    methods: {
        loadTravelBox(obj){
             this.axios.get("http://127.0.0.1:3001/travels/all_travels",{params:obj}).then((res=>{
                this.list = res.data.data;
            }))
        },
        changeActiveIndex(i){
            this.activeIndex = i;
        }
    },
    watch: {
        state:{
           handler: function(a){
            this.loadTravelBox(a);
           },
            deep: true
        }
    },
    created() {
      this.loadTravelBox({
                tab:"hot",
                pno:1,
                pageSize:6
            }); 
    },
    
}
</script>
<style>

</style>