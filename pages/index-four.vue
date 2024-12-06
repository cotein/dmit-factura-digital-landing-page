<template>
    <div>
        <Navbar />

        <section class="relative md:pt-44 py-36 bg-slate-50 dark:bg-slate-800" id="home">
            <div class="container relative">
                <div class="grid grid-cols-1 justify-center text-center">
                    <div class="">
                        <h1
                            class="font-bold lg:leading-normal leading-normal tracking-wide text-4xl lg:text-5xl capitalize mb-5">
                            Grow Sales with Our <br> Strategy First Approach</h1>
                        <p class="text-slate-400 text-lg max-w-xl mx-auto">This is just a simple text made for this unique
                            and awesome template, you can replace it with any text.</p>

                        <div class="subcribe-form mt-6 mb-3">
                            <form class="relative max-w-xl mx-auto">
                                <input type="email" id="emailid" name="email"
                                    class="py-4 pe-40 ps-6 w-full h-[50px] outline-none text-black dark:text-white rounded-full bg-white/60 dark:bg-slate-900/60 shadow dark:shadow-gray-800"
                                    placeholder="yourname@domain.com">
                                <button type="submit"
                                    class="px-6 tracking-wide inline-flex items-center justify-center font-medium absolute top-[2px] end-[3px] h-[46px] bg-teal-500 text-white rounded-full">Subscribe
                                    Now</button>
                            </form><!--end form-->
                        </div>

                        <span class="font-medium">Looking for help? <a href="" class="text-teal-500">Get in touch with
                                us</a></span>
                    </div>

                    <div class="grid lg:grid-cols-12 md:grid-cols-3 grid-cols-1 lg:gap-4 gap-2 mx-auto mt-8 items-center">
                        <div class="lg:col-span-4">
                            <div class="grid grid-cols-2 gap-4 items-center">
                                <div class="">
                                    <div class="grid grid-cols-1 gap-4">
                                        <img src="../assets/images/ab1.jpg" class="shadow rounded-lg" alt="">
                                    </div>
                                </div>

                                <div class="">
                                    <div class="grid grid-cols-1 gap-4">
                                        <img src="../assets/images/ab3.jpg" class="shadow rounded-lg" alt="">
                                        <img src="../assets/images/ab4.jpg" class="shadow rounded-lg" alt="">
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="lg:col-span-4">
                            <img src="../assets/images/ab7.jpg" class="shadow rounded-lg" alt="">
                        </div>

                        <div class="lg:col-span-4">
                            <div class="grid grid-cols-2 gap-4 items-center">
                                <div class="">
                                    <div class="grid grid-cols-1 gap-4">
                                        <img src="../assets/images/ab6.jpg" class="shadow rounded-lg" alt="">
                                        <img src="../assets/images/ab5.jpg" class="shadow rounded-lg" alt="">
                                    </div>
                                </div>

                                <div class="">
                                    <div class="grid grid-cols-1 gap-4">
                                        <img src="../assets/images/about2.jpg" class="shadow rounded-lg" alt="">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="py-6 border-b border-gray-100 dark:border-gray-700">
            <div class="container relative">
                <div class="grid md:grid-cols-6 grid-cols-2 justify-center gap-[30px]">
                    <div v-for="image in companyLogo" :key="image.id" class="mx-auto py-4">
                        <img :src="image.src" class="h-6" alt="">
                    </div>
                </div><!--end grid-->
            </div><!--end container-->
        </section>

        <About />
        <Features />
        <AgencyTab />
        <Cta />
        <Client />
        <Pricing />
        <Blogs />
        <GetInTouch />
    </div>
</template>

<script>

import image1 from '../assets/images/team/amazon.svg'
import image2 from '../assets/images/team/google.svg'
import image3 from '../assets/images/team/lenovo.svg'
import image4 from '../assets/images/team/paypal.svg'
import image5 from '../assets/images/team/shopify.svg'
import image6 from '../assets/images/team/spotify.svg'
import Navbar from '@/components/Navbar.vue'
import About from '@/components/About.vue'
import Features from '@/components/Features.vue'
import AgencyTab from '@/components/AgencyTab.vue'
import Cta from '@/components/Cta.vue'
import Client from '@/components/Client.vue'
import Pricing from '@/components/Pricing.vue'
import Blogs from '@/components/Blogs.vue'
import GetInTouch from '@/components/GetInTouch.vue'

export default {
    components: {
        Navbar,
        About,
        Features,
        AgencyTab,
        Cta,
        Client,
        Pricing,
        Blogs,
        GetInTouch
    },
    data() {
        return {

            companyLogo: [
                {
                    id: 1,
                    src: image1,
                },
                {
                    id: 1,
                    src: image2,
                },
                {
                    id: 1,
                    src: image3,
                },
                {
                    id: 1,
                    src: image4,
                },
                {
                    id: 1,
                    src: image5,
                },
                {
                    id: 1,
                    src: image6,
                },

            ],


        }
    }

}
</script>