import Home from '../views/Home.vue'
import Vue from 'vue'
import Router from 'vue-router'
import Spots from '../views/Spots.vue'
import Personal from '../views/Personal.vue'
import Index from '../views/Index.vue'
import NotFound from '../views/NotFound.vue'
import Register_Login from '../views/Register_Login.vue'
import Pics from '../views/Pics.vue'
import Strategy from '../views/Strategy.vue'
import Add_travel from '../views/Add_travel.vue'
import Travel_detail from '../views/travel_detail.vue'
import Travels from '../views/travels.vue'
import Hot_travel from '../views/travel_box/Hot_travel.vue'
import Latest_travel from '../views/travel_box/Latest_travel.vue'
import All_travel from '../views/travel_box/All_travel.vue'
// import Strategy_details from '../views/Strategy_details.vue'

Vue.use(Router);

export default new Router({
  routes: [
    {path: '/', component: Home,children:[
      {path: '', component: Index},
      {path: '/index', component: Index},
      {path: '/personal', component: Personal},
      {path: '/spots', component: Spots},
      {path: '/pics', component: Pics},
      {path: '/strategy', component: Strategy},
      {path: '/travel_detail', component: Travel_detail},
      {path: '/travels', component: Travels,children:[
        {path: '/hot_travel', component: Hot_travel},
        {path: '/latest_travel', component: Latest_travel},
        {path: '/all_travel', component: All_travel}
      ]},
      // {path: '/strategy_details', component: Strategy_details},
      {path: '/add_travel', component: Add_travel}
    ]},
    {path:'/login_register',component:Register_Login},
    {path: '**', component: NotFound}
    ],
})
