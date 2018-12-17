import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)

export default new Vuex.Store({
    state:{
        islogin:false,
        userMsg:sessionStorage.getItem('userMsg')||null
        ,
        // userMsg:null,//存放用户uid和用户名或者登陆账号
        // uid:""
    },
    mutations:{
        signin(state,userMsg){
            state.islogin = true;
            state.userMsg = userMsg;
            // state.uid = uid;
            window.sessionStorage.setItem('userMsg', state.userMsg);
        },
        signout(){
            this.state.islogin = false;
            this.state.userMsg = null;
            // this.state.uid = "",
            window.sessionStorage.removeItem('userMsg');
        }
    },
    actions:{

    }

})