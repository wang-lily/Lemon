import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)

export default new Vuex.Store({
    state:{
        islogin:false,
        user:""
    },
    mutations:{
        signin(state,user){
            state.islogin = true;
            state.user = user;
        },
        signout(){
            this.state.islogin = false;
            this.state.user = "";
        }
    },
    actions:{

    }

})