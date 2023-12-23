<template>
  <MainPage></MainPage>
</template>

<script>
import MainPage from "@/components/MainPage.vue";

export default {
  name: 'App',
  components: {
      MainPage
  }
}
</script>

<style>
@font-face {
    font-family: "KFont";
    src: url("@/assets/KrutoyFont.woff2") format('woff2');
}

#app {
  font-family: KFont, Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}

* {
    font-family: KFont, Avenir, Helvetica, Arial, sans-serif;
}
</style>
