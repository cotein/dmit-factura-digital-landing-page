<template>
  <div>
    <NuxtLayout>
      <NuxtPage />
    </NuxtLayout>
    <Footer />
    <switcher />
  </div>
</template>

<script >

  import feather from 'feather-icons'
import Footer from './components/Footer.vue'
import Switcher from '@/components/Switcher.vue'

export default {
  name: "App",
  data() {
    return {

    }
  },
   mounted() {
      feather.replace();
  },
  components: {
    Footer,
    Switcher,
  },
 
}
</script>