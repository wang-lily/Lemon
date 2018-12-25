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
      // {path: '/strategy_details', component: Strategy_details},
      {path: '/add_travel', component: Add_travel}
    ]},
    {path:'/login_register',component:Register_Login},
    {path: '**', component: NotFound}
    ],
})
