<template>
    <div>
        <NavLight/>

           <section class="relative md:h-screen md:py-0 py-36 items-center overflow-hidden bg-gradient-to-t to-teal-600 via-teal-600/50 from-transparent" id="home">
            <div class="container relative">
                <div class="grid grid-cols-1 md:mt-48 mt-10 text-center">
                    <h4 class="font-bold lg:leading-normal leading-normal tracking-wide text-4xl lg:text-5xl capitalize text-white mb-5">Get powerful <br> solutions for your business</h4>
                    <p class="text-white/70 text-lg max-w-xl mx-auto">This is just a simple text made for this unique and awesome template, you can replace it with any text.</p>

                    <div class="subcribe-form mt-6 mb-3">
                        <form class="relative max-w-xl mx-auto">
                            <input type="email" id="emailid" name="email" class="py-4 pe-40 ps-6 w-full h-[50px] outline-none text-black dark:text-white rounded-full bg-white/60 dark:bg-slate-900/60 shadow dark:shadow-gray-800" placeholder="yourname@domain.com">
                            <button type="submit" class="px-6 tracking-wide inline-flex items-center justify-center font-medium absolute top-[2px] end-[3px] h-[46px] bg-teal-500 text-white rounded-full">Subscribe Now</button>
                        </form><!--end form-->
                    </div>

                    <span class="text-white font-medium">Looking for help? <a href="" class="text-white underline">Get in touch with us</a></span>

                    <div class="overflow-hidden mt-8">
                        <img src="../assets/images/home.png" alt="">
                    </div>
                </div><!--end grid-->
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
import NavLight from '@/components/NavLight.vue'
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
        NavLight,
        About,
        Features,
        AgencyTab,
        Cta,
        Client,
        Pricing,
        Blogs,
        GetInTouch
    }
    
}
</script>