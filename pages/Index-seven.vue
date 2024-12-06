<template>
<div>
        <NavLight/>
        <section class="swiper-slider-hero relative block h-screen" id="home">
            <div class="swiper-container absolute end-0 top-0 w-full h-full">
                <swiper class="swiper-wrapper" :modules="modules" :autoplay="true">
                    <swiper-slide class="swiper-slide flex items-center overflow-hidden">
                        <div class="slide-inner absolute end-0 top-0 w-full h-full slide-bg-image flex items-center bg-center" :style="{ backgroundImage: `url(${backgroundImagePath})` }">
                            <div class="absolute inset-0 bg-black/70"></div>
                            <div class="container relative">
                                <div class="grid grid-cols-1">
                                    <div class="text-start">
                                        <h1 class="font-bold lg:leading-normal leading-normal tracking-wide text-4xl lg:text-5xl capitalize text-white mb-5">Connect with <br> customers smartly</h1>
                                        <p class="text-white/70 text-lg max-w-xl">This is just a simple text made for this unique and awesome template, you can replace it with any text.</p>
                                        
                                        <div class="mt-6">
                                            <a href="" class="h-10 px-6 tracking-wide inline-flex items-center justify-center font-medium rounded-md bg-teal-500 text-white">See More</a>
                                        </div>
                                    </div>
                                </div><!--end grid-->
                            </div><!--end container-->
                        </div><!-- end slide-inner --> 
                    </swiper-slide> <!-- end swiper-slide -->

                    <swiper-slide class="swiper-slide flex items-center overflow-hidden">
                        <div class="slide-inner absolute end-0 top-0 w-full h-full slide-bg-image flex items-center bg-center;" :style="{ backgroundImage: `url(${backgroundImagePath1})` }">
                            <div class="absolute inset-0 bg-black/70"></div>
                            <div class="container relative">
                                <div class="grid grid-cols-1">
                                    <div class="text-start">
                                        <h1 class="font-bold lg:leading-normal leading-normal tracking-wide text-4xl lg:text-5xl capitalize text-white mb-5">Get all the <br> inspirations for your business</h1>
                                        <p class="text-white/70 text-lg max-w-xl">This is just a simple text made for this unique and awesome template, you can replace it with any text.</p>
                                        
                                        <div class="mt-6">
                                            <a href="" class="h-10 px-6 tracking-wide inline-flex items-center justify-center font-medium rounded-md bg-teal-500 text-white">See More</a>
                                        </div>
                                    </div>
                                </div><!--end grid-->
                            </div><!--end container-->
                        </div><!-- end slide-inner --> 
                    </swiper-slide> <!-- end swiper-slide -->
                </swiper>
                <!-- end swiper-wrapper -->

              
            </div><!--end container-->
        </section>
        <About/>
        <Features/>
        <AgencyTab/>
        <Cta/>
        <Client/>
        <Pricing/>
        <Blogs/>
        <GetInTouch/>
</div>
        
 
</template>

<script>
import backgroundImagePath from '../assets/images/bg/1.jpg'
import backgroundImagePath1 from '../assets/images/bg/2.jpg'
import NavLight from '@/components/NavLight.vue'
import About from '@/components/About.vue'
import Features from '@/components/Features.vue'
import AgencyTab from '@/components/AgencyTab.vue'
import Cta from '@/components/Cta.vue'
import Client from '@/components/Client.vue'
import Pricing from '@/components/Pricing.vue'
import Blogs from '@/components/Blogs.vue'
import GetInTouch from '@/components/GetInTouch.vue'

 import { Swiper, SwiperSlide } from 'swiper/vue';
  import { Navigation , Autoplay} from 'swiper/modules';

  // Import Swiper styles
  import 'swiper/css';

export default {
    data() {
        return {
            backgroundImagePath,
            backgroundImagePath1
        }
    },
        components:{
        NavLight,
        About,
        Features,
        AgencyTab,
        Cta,
        Client,
        Pricing,
        Blogs,
        GetInTouch,
         Swiper,
      SwiperSlide,
        },
        setup() {
      return {
        modules: [Navigation, Autoplay],
      };
    },

};
</script>
<style scoped>
.swiper {
  width: 100%;
  height: 100%;
}

.swiper-slide {
  text-align: center;
  font-size: 18px;
  background: #fff;

  /* Center slide text vertically */
  display: flex;
  justify-content: center;
  align-items: center;
}

.swiper-slide img {
  display: block;
  width: 100%;
  height: 100%;
  object-fit: cover;
}
</style>
