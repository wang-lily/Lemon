<template>
  <div>
    <Header></Header>
    <router-view></router-view>
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
  components: {
    Header,
    Footer,
    toTop
  }
}
</script>
<style>

</style>