import Home from '../views/Home.vue'
import Vue from 'vue'
import Router from 'vue-router'
import Spots from '../views/Spots.vue'
import Personal from '../views/Personal.vue'
// import Index from '../views/Index.vue'


Vue.use(Router)

export default new Router({
  routes: [
    {path: '/', component: Home,children:[
      // {path: '', component: Index},
      {path: '/personal', component: Personal},
      {path: '/spots', component: Spots}
    ]},
   
  ]
})
