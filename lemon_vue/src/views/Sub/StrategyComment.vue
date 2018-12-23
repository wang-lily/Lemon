<template>

  <div class="strategyComment mt-5" id='strategyComment'>
      <div class="col-md-8 col-sm-8 col-12 pl-0 pb-5">
            <h3 class="pl-0 mb-3">评论区</h3>
            <!--发表评论区域-->
            <textarea class="p-6 pr-5 w-100" 
            placeholder="最多评论200个字..." 
            maxlength="200" v-model='msg'></textarea>
            <button @click='pubComment' class="btn btn-sm float-right pubComment">发表评论</button>
     </div>

    <!--显示评论区域-->
    <div class="cmt-list col-md-8 col-sm-8 col-12 mt-2 mb-2 pl-0 pr-0 pb-4" v-for='(item,index) in commentList'>
      <div class="cmt-item">
        <div class="cmt-info">
            <p>第 {{index+1}} 楼: 用户名:{{item.user_name}}</p> 
          <div class="cmt-body">
              {{item.content}}
          </div>
          <p class="d-flex float-right">
              发表时间:{{item.ctime | datatimeFilter}}
                赞：{{item.zan}}
                踩：{{item.cai}}</p>
        </div>
      </div>
    </div>

    <button class="col-md-8 col-sm-8 col-12  btn btn-light p-2 bordered"
     @click='getMore'>加载更多...</button>
  </div>
</template>

<script>
  export default {
    data() {
      return {
        msg:'',   //评论内容
        pno:0,     
        pageSize:6,
        pageCount:1,   //总页数
        commentList:[],
        user_name:''
      } 
    },
    props: ['pid'],
    methods: {
        pubComment(){
            console.log('发表评论！');

        },
        getMore(){
            //发送请求获取评论列表 pid
                var pid=this.pid;
                this.pno++;
       
            //判断是否还有数据
            var hasMore=this.pno<=this.pageCount;
            if(!hasMore){return;}
                
            var pno=this.pno;
            var pageSize=this.pageSize;

             this.axios.get("http://127.0.0.1:3001/strategy/getcomment",
                  {params:{
                       pno:this.pno,
                       pid:this.pid,
                       pageSize:this.pageSize
                  }}).then(res=>{
                       this.commentList=this.commentList.concat(res.data.data);
                  })
       }
    },

    created() {
      this.getMore();
    },
    filters:{
       datatimeFilter:function(val){
      //创建一个日期对象
       var obj=new Date(val);
       //获取年月日时分秒
       var year=obj.getFullYear(),
        month=obj.getMonth()+1,
        day=obj.getDate(),
        hour=obj.getHours(),
        minute=obj.getMinutes(),
        second=obj.getSeconds();
        month= month<10?('0'+month):month;
        day=day<10?('0'+day):day;
        return `${year}-${month}-${day}  ${hour}:${minute}:${second}`;  
      }
    }
}

</script>

<style>
  .strategyComment h3 {
    font-size: 18px;
    color: #FF9800;
    width: 90px;
  }

  .strategyComment textarea {
    font-size: 14px;
    height: 68px;
    resize: none;
    border-radius: 3px;
    box-shadow: 1px 1px 1px #ccc;
    padding: 6px;
  }
  .strategyComment .cmt-list{
    /* border-bottom: 1px solid #ccc; */
    line-height: 30px;
    box-shadow: 0px 1px 1px #ccc;
  }
  /* .strategyComment .cmt-list .cmt-info {
    line-height: 30px;
    box-shadow: 0px 1px 1px #ccc;
  } */
  .strategyComment .pubComment{
    background-color: #FF9800; 
    color: #fff;
    /* border: 1px solid #fff; */
  }
  .btn:focus, .btn.focus{
    box-shadow: 0 0 0 0.2rem #fff;;
    outline: none;
    background-color: #ccc; 
  }
</style>