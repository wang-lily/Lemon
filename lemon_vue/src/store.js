import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)

export default new Vuex.Store({
    state:{
        islogin:false,
        user:sessionStorage.getItem('user')||""
    },
    mutations:{
        signin(state,user){
            state.islogin = true;
            state.user = user;
            window.sessionStorage.setItem('user', state.user);
        },
        signout(){
            this.state.islogin = false;
            this.state.user = "";
            window.sessionStorage.removeItem('user');
        }
    },
    actions:{

    }

})