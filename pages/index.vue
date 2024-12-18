<template>
    <div>
      <Navbar />
      <section class="relative overflow-hidden md:py-48 py-40 bg-teal-500/5 dark:bg-teal-500/20" id="home">
        <div class="container relative mt-8">
          <div class="grid md:grid-cols-2 grid-cols-1 gap-6 items-center">
            <div>
              <h1 class="font-semibold lg:leading-normal leading-normal tracking-wide text-4xl lg:text-5xl mb-5">Tu sistema de facturación online, confiable y accesible.</h1>
              <p class="text-slate-400 text-lg max-w-xl">Desde nuestro servicio podrá emitir comprobantes de venta, listarlos, y más.</p>
  
              <!-- <div class="mt-6">
                <a href="https://www.facturador.dmit.ar/auth/register"
                  class="h-10 px-6 tracking-wide inline-flex items-center justify-center font-medium rounded-md bg-teal-500 text-white">Registrarse <i class="mdi mdi-chevron-right ms-1"></i></a>
              </div> -->
            </div>
  
            <div class="lg:ms-8">
              <div class="relative">
                <img src="../assets/images/design-team.svg" class="relative top-16" alt="">
                <div
                  class="overflow-hidden absolute md:size-[500px] size-[400px] bg-gradient-to-tl to-teal-500/20 via-teal-500/70 from-teal-500 bottom-1/2 translate-y-1/2 md:start-0 start-1/2 ltr:md:translate-x-0 ltr:-translate-x-1/2 rtl:md:translate-x-0 rtl:translate-x-1/2 -z-1 shadow-md shadow-teal-500/10 rounded-full">
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
      <About />
      <Features />
      <!-- <AgencyTab /> -->
      <!-- <Cta /> -->
      <!-- <Client /> -->
      <Pricing />
      <!-- <Blogs /> -->
      <GetInTouch />
    </div>
  </template>
  
  <script>
  import Navbar from "../components/Navbar.vue";
  import About from "../components/About.vue";
  import Features from '../components/Features.vue';
  import AgencyTab from '../components/AgencyTab.vue';
  import Cta from '../components/Cta.vue'
  import Client from '../components/Client.vue'
  import Pricing from '../components/Pricing.vue'
  import Blogs from '../components/Blogs.vue'
  import GetInTouch from '../components/GetInTouch.vue'
  export default {
    name: "IndexPage",
    data() {
      return {
  
      }
    },
    components: {
      Navbar,
      About,
      Features,
      AgencyTab,
      Cta,
      Client,
      Pricing,
      Blogs,
      GetInTouch,
    }
  
  }
  </script>
  
  <style lang="scss" scoped></style>
  