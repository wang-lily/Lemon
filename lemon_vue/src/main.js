// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
// import './assets/css/bootstrap.css';
// import './assets/css/iconfont.css';
import Vue from 'vue'
import App from './App'
import router from './router/router.js'
// import store from './store'
import axios from 'axios'
// import $ from 'jquery'
// import '@/assets/css/bootstrap.css'
// Vue.config.productionTip = false;
// axios.defaults.withCredentials = true;
Vue.prototype.axios = axios;
// Vue.prototype.jquery = $;

Vue.config.productionTip = false;//阻止 vue 在启动时生成生产提示
/* eslint-disable no-new */
new Vue({
  router,
  // store,
  render: h => h(App)
}).$mount('#app')
