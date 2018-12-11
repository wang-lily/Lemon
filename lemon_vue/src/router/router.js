import Home from '../views/Home.vue'
import Vue from 'vue'
import Router from 'vue-router'
// import Spots from '../views/Spots.vue'


Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/', 
      component: Home,
       children:[
        {path:"", component: Home}
        // {path:"spots", component:Spots}
      ]
    }
  ]
})
