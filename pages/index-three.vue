<template>
    <div>
        <Navbar/>

        <section v-for="image in images" :key="image.id" class="relative flex items-center md:h-screen py-36 bg-no-repeat bg-center bg-cover" :style="{'background-image' : 'url('+ ('../assets/images/bg/2.png') +')'}" id="home">
            <div class="container relative">
                <div class="grid lg:grid-cols-12 md:grid-cols-2 grid-cols-1 items-center mt-6 gap-6 relative">
                    <div class="lg:col-span-7 md:me-6">
                        <h4 class="font-semibold lg:leading-normal leading-normal tracking-wide text-4xl lg:text-5xl mb-5">Revolutionizing Your <span class="text-teal-500 font-bold">Business</span> with Upcover</h4>
                        <p class="text-slate-400 text-lg max-w-xl">This is just a simple text made for this unique and awesome template, you can replace it with any text.</p>
                    
                        <div class="relative mt-6 space-x-1">
                            <a href="" class="h-10 px-6 tracking-wide inline-flex items-center justify-center font-medium rounded-md bg-teal-500 text-white">Get Started</a>
                            <a href="#!" @click="toggle" class="size-9 inline-flex items-center justify-center tracking-wide align-middle duration-500 text-base text-center bg-teal-500 text-white rounded-full lightbox"><i class="mdi mdi-play text-xl align-middle"></i></a><small class="text-sm font-medium uppercase align-middle ms-2">Watch Now</small>
                        </div>
                    </div>

                    <div class="lg:col-span-5">
                        <div class="relative">
                            <img src="../assets/images/about2.jpg" class="mx-auto rounded-[150px] rounded-br-2xl shadow dark:shadow-gray-700 w-[90%]" alt="">
    
                            <div class="overflow-hidden after:content-[''] after:absolute after:h-10 after:w-10 after:bg-teal-500/20 after:top-0 after:start-0 after:-z-1 after:rounded-lg after:animate-[spin_10s_linear_infinite]"></div>
                        
                            <div class="absolute flex justify-between items-center bottom-16 md:-start-10 -start-5 p-4 rounded-lg shadow-md dark:shadow-gray-800 bg-white dark:bg-slate-900 w-60 m-3">
                                <div class="flex items-center">
                                    <div class="flex items-center justify-center h-[65px] min-w-[65px] bg-teal-500/5 text-teal-500 text-center rounded-full me-3">
                                        <i data-feather="monitor" class="h-6 w-6"></i>
                                    </div>
                                   <Counter/>
                                </div>
    
                                <span class="text-red-600"><i class="mdi mdi-trending-down"></i> 0.5%</span>
                            </div>
    
                            <div class="absolute top-16 md:-end-10 -end-5 p-4 rounded-lg shadow-md dark:shadow-gray-800 bg-white dark:bg-slate-900 w-48 m-3">
                                <h5 class="text-lg font-semibold mb-3">Manage Software</h5>
                                <div class="flex justify-between mt-3 mb-2">
                                    <span class="text-slate-400">Progress</span>
                                    <span class="text-slate-400">84%</span>
                                </div>
                                <div class="w-full bg-gray-100 dark:bg-gray-800 rounded-full h-[6px]">
                                    <div class="bg-teal-500 h-[6px] rounded-full" style="width: 84%"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div><!--end grid-->
            </div><!--end container-->
        </section>
        <div :class="isActive ? 'fixed' : 'hidden' " class="bg-black/[0.9] top-0 left-0 bottom-0 w-[100%] h-[100%] z-999">
            <div class="h-[100%] flex items-center justify-center">
                <div class="relative inline-block">
                    <iframe src="https://www.youtube.com/embed/S_CGed6E610" width="700" height="500" frameborder="0"></iframe>
                    <a class="mdi mdi-close text-white absolute top-1 right-1 text-xl" @click="toggle"></a>
                </div>
            </div>
        </div>

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
import image1 from '../assets/images/bg/2.jpg'
import feather from 'feather-icons'
import Navbar from '@/components/Navbar.vue'
import Counter from '@/components/Counter.vue'
import About from '@/components/About.vue'
import Features from '@/components/Features.vue'
import AgencyTab from '@/components/AgencyTab.vue'
import Cta from '@/components/Cta.vue'
import Client from '@/components/Client.vue'
import Pricing from '@/components/Pricing.vue'
import Blogs from '@/components/Blogs.vue'
import GetInTouch from '@/components/GetInTouch.vue'

export default {
    components:{
        Navbar,
        Counter,
        About,
        Features,
        AgencyTab,
        Cta,
        Client,
        Pricing,
        Blogs,
        GetInTouch,
    },

    data(){
        return{
             isActive: false,
             images: [
                {
                    id: 1,
                    src: image1,
                  
                },
            ]

        }
        
    },

     methods: {
        toggle() {
        if (!this.isActive) {
            this.isActive = true;
        } else {
            this.isActive = false;
        }
        },
   },
    mounted() {
        feather.replace();
    }
    
}
</script>