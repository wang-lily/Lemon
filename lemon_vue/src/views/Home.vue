<template>
  <div>
    <Header></Header>
    <router-view v-if="isReload"></router-view>
    <toTop></toTop>
    <Footer></Footer>

  </div>
</template>

<script>

// @ is an alias to /src
import Header from '@/components/Header.vue'
import Footer from '@/components/Footer.vue'
import toTop from '@/components/toTop.vue'
export default {
  provide(){
      return {
          reload:this.reload
      }
  },
  data(){
    return {
      isReload:true
    }
  },
  methods: {
    reload() {
			this.isReload = false;
			this.$nextTick(function(){
				this.isReload = true;
			})
		}
  },
  components: {
    Header,
    Footer,
    toTop
  }
}
</script>
<style>

</style>