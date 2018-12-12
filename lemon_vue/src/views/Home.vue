<template>
  <div>
    <Header/>
    <router-view></router-view>
    <!-- <Footer></Footer> -->
  </div>
</template>

<script>

// @ is an alias to /src
import Header from '@/components/Header.vue'
// import Footer from '@/components/Header.vue'
export default {
  components: {
    Header
  }
}
</script>
<style scoped>

</style>