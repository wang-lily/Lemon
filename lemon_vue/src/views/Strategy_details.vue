<template>
    <section class='container strategy_details pt-5 mt-4 mb-3' v-cloak>
    <p class="breadCrumb pb-3">
        <router-link to='/strategy'>首页&gt;</router-link> 
        <span href="#">{{StrategyDetails[0].spot}}</span>&gt;
        <span href="#">自由行攻略</span>
    </p>
    <div class="row bigTitle mb-3">
        <div class="col-md-8 col-sm-8 col-12 ">
            <h3>{{StrategyDetails[0].totaltitle}}</h3>
            <p class="float-right p-2 text-muted">发布时间:<span class="pr-3">2018-5-8</span>
                阅读量:<span>{{StrategyDetails[0].tview}}</span></p>
        </div>
        <ul class='text-center tag col-md-4 col-sm-4 col-12 d-flex flex-row justify-content-end'>
            <li class="pr-4 ">
                <a class="mb-0 comment" href="#strategyComment"> <i class="iconfont icon-dianping"></i></a>
                <p >评论</p>
            </li>
            <li class="pr-4">
                <p class="mb-0"> <i class="iconfont icon-zan" :class="zanFlag?'zanActive':''" @click='zanFlag=true'></i></p>
                <p>点赞</p>
            </li>
            <li class="pr-4">
                <p class="mb-0"> <i class="iconfont icon-fenxiang1"></i></p>
                <p>分享</p>
            </li>
        </ul>

    </div>
    <div class="row details">
        <div class="content col-md-8 col-sm-8 col-12">
            <h4>“如果你只有2天时间，想要这样带你玩转魔幻重庆~</h4>
            重庆这座极具特点的魔幻城市，有太多的美食美景值得驻足，立体的城市建设、
            复杂的地形，导航也拿他没辙；江湖菜的霸道，火锅的豪气，辣到流眼泪也停
            不下来；还有重庆人，也是直爽泼辣得可爱……
            如果你有2天时间，推荐你这样玩出重庆精髓。<br>
           <p class="pb-2"><img :src="StrategyDetails[0].img[0]" alt="" class="w-100 pt-2">
            <div class="routes pt-1">
                <h2 class="pt-4  text-h2" id="day1">Day01&nbsp;网红地深度体验不打卡</h2>
                <span>重庆彻底火了！无数人来到重庆，只为了打卡网红同款洪崖洞、千厮门、轻轨穿墙……随着游客的不断增长，如何合理安排网红点的游玩路线？如何在网红地深度体验？我们从人少、体验、不绕路等多方面考虑，为你安排了重庆第一天不打卡式的网红地游玩。</span>
                <p class="pt-4">路线推荐： <span>磁器口——三层马路——李子坝——南山——长江索道——WFC</span></p>
                <p class="pb-2"><img :src="StrategyDetails[0].img[1]" alt="" class="w-100 pt-2">

                <h2 class="text-h3">最佳推荐</h2>
                <h3 class="pt-4 text-h3" id="ind1">磁器口——寻找景点里的静谧</h3>
                <span>磁器口作为重庆旅游的第一名片，每天都吸引着无数的游客纷至。为什么要在第一站选择磁器口？因为磁器口上午人最少，最能体验到地道的老重庆气息，一旦过了12点，这里就是一个人声嘈杂的景区了。<br>
                    始于宋代的古镇，是能代表重庆的真正历史悠久的地点，一条石板路，依山而建的吊脚楼，一个码头，代表着川渝山城文化、码头文化，是老重庆的社会缩影。虽然随着时代的发展，码头拆除了，河边的茶馆也消失了，但麻花和茶馆是这里的标志性体验，无论叫卖声再高昂，游客再多再嘈杂，喝茶、看戏、吃麻花，依然是老重庆来磁器口不变的娱乐消遣。</span>
               <p class="pb-2"><img :src="StrategyDetails[0].img[2]" alt="" class="w-100 pt-2">
                <p><span>推荐麻花：</span>夏麻花，磁器口第一家老麻花</p>
                <p><span>推荐茶馆：</span>宝善宫，比较大的茶馆，每天上午11:00有川剧表演，茶园子环境不错。</p>
                <p><span>避人潮方案：</span>从金碧街进入，沿着极具山城特色的吊脚楼青石板路走过，到宝善宫喝茶躲避嘈杂的人流。</p>
                <h2 id="night" class="text-h3">重庆夜，更精彩</h2>
                <span>重庆的夜，比白天更繁华光鲜。如果你在WFC还没看够“小香港”的夜景，推荐你继续逛逛洪崖洞、南滨路，感受更华丽、更璀璨的夜重庆。<br>
                    当然如果你对夜景并无执念，也可以直接去吃个火锅，喝个夜啤酒，看看本地人划拳、摆龙门阵，感受重庆的江湖气息</span>
                <p class="pt-4">路线推荐：<span>千厮门大桥——洪崖洞——南滨路——一棵树</span></p>
                <p class="pb-2"><img :src="StrategyDetails[0].img[1]" alt="" class="w-100 pt-2">
                <h2 id="night1" class="text-h3">南滨路——老重庆心中的城市名片</h2>
                <span>从游客视角洪崖洞是重庆的代表，但在老重庆眼中，南滨路才是属于这个城市的名片。对游客来说这条路是看负有“小香港”盛誉的重庆夜景；对本地人来说，是饭后散步、吹江风的最佳去处。<br>
                    推荐路线：南滨公园—弹子石，一路能欣赏到璀璨的两岸风光和朝天门码头的两江交汇。</span>
                <p class="pb-2"><img :src="StrategyDetails[0].img[0]" alt="" class="w-100 pt-2"></p>


                <h2 class="pt-3 text-h2" id="art">Day2：&nbsp;寻梦艺术重庆</h2>
                <span>重庆是一座极具包容力的城市，你可以在这里感受到许许多多独一无二的城市特色，比如满城可见的涂鸦；比如有钱的人在文艺的民宿喝喝下午茶翻翻书是一种消遣，普通人在街边石墩子上下象棋也是一道风景线；当然开豪车的、踩自行车的也许都会去同一家看着并不起眼的街边小店大快朵颐，这就是重庆。</span>

                <p class="pt-4">路线推荐： <span>铁路四村——交通茶馆——川美——大足石刻</span> --></p>
                 <p class="pb-2"><img :src="StrategyDetails[0].img[1]" alt="" class="w-100 pt-2"></p> 
                <h3 id="art1" class="text-h3">下浩老街——不知还能伴你到何时</h3>
                <span>一段已经在拆迁中、依山而建的步道，是老重庆的集体回忆，奇香花生还有好多小时候爱吃的零食，都是在这里生产的。虽然现在整条道路已经打围，那些文艺的小店也所剩无几，但还是有一些念旧的人寻着小路走了上来，看到墙上的涂鸦就知道是重庆这座城没错了。在冰粉店或是喝茶小铺里坐坐，在树荫下走走、拍拍照，就是一天念旧的重庆时光。上午的时候这里更加静谧，更有一种神秘感，非常棒。<br>
                    推荐线路：建议10:00左右到达，从长江汇当代艺术中心入口进-穿过建筑向上走-下浩里-奇香花生-猴哥酸菜米线-老外婆春卷-林觉寺</span>
              <p class="pb-2"><img :src="StrategyDetails[0].img[0]" alt="" class="w-100 pt-4"></p> 

                <div class="food" id="food">
                    <h3 class="pt-4 text-h3" >美食热点推荐</h3>
                    <span>重庆的美食，辣得霸道，火锅和串串是必体验的，当然还少不了豪气的江湖菜，绝对让嗜辣者上瘾。<br>
                        Tips：对于没有重油重辣饮食习惯的人，建议不要第一天就吃火锅等过于麻辣的食物，循序渐进，才能渐入佳境的体验重庆美食。</span>
                    <p>【火锅或者串串】</p>
                    <p id="food1">冬生老火锅</p>
                    <p>佩姐旗下新的品牌，注意点微微辣，因为真的很辣。推荐毛肚银边，8秒土豆。</p>
                    <p>地址：解放碑较场口321公交车站旁得意世界对面 </p>
                    <p class="pb-2"><img :src="StrategyDetails[0].img[1]" alt="" class="w-100 pt-4"></p>

                    <p id="food2">【慕儿姜鸭面】</p>
                    <p>多年老店（以前刘氏姜鸭面）搬家后新装修，曾经以为消失了，当又找到他的时候喜极而泣到忍不住要多吃二两。</p>
                    <p>地址：财信渝中城车库2号门旁</p>
                    <p class="pb-2"><img :src="StrategyDetails[0].img[2]" alt="" class="w-100 pt-4"></p> 
                </div>
                <h3 class="pt-4 text-h3" id="way">结语</h3>
                <p>重庆市区，至少值得用2天的时间来深度体验，如果你对文中提及的点有任何疑问欢迎留言，我们会及时回复大家的，也欢迎大家收藏点赞和转发哦～～</p>
            </div>
        </div>
        <div class="catalog col-md-4 col-sm-4 col-12 border-left pr-2 ">
            <h3 class="mb-1  pl-0 text-h3"><i class="iconfont icon-mudedi1"></i> 攻略目录</h3>
            <ul class="pointer_nav_right row">
                <li class="mt-1 p-2 col-md-12 col-sm-3 col-4">
                  <a href="#"><h4>Day1：初见重庆→洪崖洞→解放碑</h4></a> 
                </li>
                <li class="mt-1 p-2 col-md-12 col-sm-3 col-4"> <a href="#">磁器口——寻找景点里的静谧</a></li>
                <li class="mt-1 p-2 col-md-12 col-sm-3 col-4"> <a href="#"><h5>重庆夜，更精彩</h5></a></li>
                <li class="mt-1 p-2 col-md-12 col-sm-3 col-4"> <a href="#">南滨路——老重庆心中的城市名片</a></li>
                <li class="mt-1 p-2 col-md-12 col-sm-3 col-4">  <a href="#"> <h4>Day2：寻梦艺术重庆</h4></a></li>
                <li class="mt-1 p-2 col-md-12 col-sm-3 col-4"> <a href="#">下浩老街——不知还能伴你到何时</a></li>
                <li class="mt-1 p-2 col-md-12 col-sm-3 col-4"> <a href="#"><h5>美食推荐</h5></a>
                </li>
                <li class="mt-1 p-2 col-md-12 col-sm-3 col-4"> <a href="#">冬生老火锅</a>
                </li>
                <li class="mt-1 p-2 col-md-12 col-sm-3 col-4"> <a href="#">慕儿姜鸭面</a>
                </li>
                <li class="mt-1 p-2 col-md-12 col-sm-3 col-4">
                    <a href="#"><h4>结语</h4></a>
                </li>

            </ul>
        </div>

    </div>
</section>


</template>
<script>

import $ from 'jquery';
import {rightCategory}  from '../assets/js/strategy_details.js';

export default{
    data() {
        return {
            StrategyDetails:[{spot:'',totaltitle:'',img:'',tview:''}],
            zanFlag:false,
            pid:this.$route.query.pid
        } 
    },
 
    methods: {
        // 获取详情
        loadStrategyDetails(){
                    this.axios.get(this.$store.state.url+'/strategy/getStrategyDetails',
                    {params:{pid:this.pid}}).then(res=>{
                         this.StrategyDetails=res.data;
                         for(var item of this.StrategyDetails){
                             item.img=item.img.split('&');
                         }
                  })
              }
    },
    created() {
        this.loadStrategyDetails();
    },
    mounted() {
        rightCategory();
    },

}
</script>
<style>
   @import '../assets/css/strategy_details.css';
</style>