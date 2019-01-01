// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import Vue from 'vue'
import App from './App'
import router from './router'
import store from './store'
import axios from 'axios'
import './assets/css/bootstrap.css'
import './assets/css/base.css'
// import './assets/css/iconfont.css'

axios.defaults.withCredentials = true;
// axios.defaults.baseURL = '';
axios.defaults.headers.post['Content-Type'] = 'application/x-www-form-urlencoded';
Vue.prototype.axios = axios;
Vue.prototype.bus = new Vue();

Vue.config.productionTip = false;//阻止 vue 在启动时生成生产提示
/* eslint-disable no-new */
new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
