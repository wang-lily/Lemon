<template>
    <div>
        <div class="border-bottom" style="height:70px"></div>
        <div class="container">
            <h3 class="text-center h2 p-3" style="font-weight:bold;">{{details.title}}</h3>
            <span>{{details.time}}</span>
            <div v-html="details.html"></div>
        </div>
    </div>
</template>

<script>
export default {
    data(){
        return {
            details:{
                title:"",
                html:"",
                time:""
            }
        }
    },
    methods: {
        loadText(){
            this.axios.get("http://127.0.0.1:3001/add_travel/get_travel").then((res)=>{
                console.log(res.data);
                 this.details.html = res.data.txt;
                 this.details.title = res.data.title;

            })
        }
    },
    created() {
        this.loadText();
    }
}
</script>
<style>

</style>