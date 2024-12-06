<template>
    <div>
        <NavLight />  
    
        <section class="relative table w-full py-36 lg:py-64 overflow-hidden" id="home">
            <div class="absolute inset-0 overflow-hidden">
                <div v-for="image in images" :key="image.id" class="absolute image-wrap -top-[350px] -bottom-[350px] -start-[100px] -end-[100px] min-w-full w-auto min-h-full h-auto overflow-hidden m-auto bg-no-repeat bg-center bg-cover"
                  > <img :src="image.src" alt=""></div>
            </div>
            <div class="absolute inset-0 bg-black/70"></div>

            <div class="container relative">
                <div class="grid grid-cols-1 text-center">
                    <div class="text-center">
                        <a href="#!" @click="toggle"
                            class="lightbox size-20 rounded-full shadow-lg dark:shadow-gray-700 inline-flex items-center justify-center bg-white dark:bg-slate-900 text-teal-500 dark:text-white">
                            <i class="mdi mdi-play inline-flex items-center justify-center text-2xl"></i>
                        </a>
                    </div>

                    <h4
                        class="text-white font-semibold lg:leading-normal leading-normal tracking-wide text-4xl lg:text-5xl my-5">
                        We Collaboration Easy & Fast</h4>

                    <p class="text-white/70 text-lg max-w-xl mx-auto">This is just a simple text made for this unique and
                        awesome template, you can replace it with any text.</p>

                    <div class="relative mt-8">
                        <a href=""
                            class="h-10 px-6 tracking-wide inline-flex items-center justify-center font-medium rounded-md bg-teal-500 text-white">Get
                            Started</a>
                    </div>
                </div>
            </div><!--end container-->
        </section><!--end section-->
        <div class="relative">
            <div class="absolute block w-full h-auto bottom-[25px] z-1 start-0">
                <a href="#about"><i
                        class="mdi mdi-arrow-down absolute top-0 start-0 end-0 text-center inline-flex items-center justify-center rounded-full bg-white dark:bg-slate-900 h-12 w-12 mx-auto shadow-md dark:shadow-gray-800"></i></a>
            </div>

            <div
                class="shape absolute sm:-bottom-px -bottom-[2px] start-0 end-0 overflow-hidden text-white dark:text-slate-900">
                <svg class="w-full h-auto scale-[2.0] origin-top" viewBox="0 0 2880 48" fill="none"
                    xmlns="http://www.w3.org/2000/svg">
                    <path d="M0 48H1437.5H2880V0H2160C1442.5 52 720 0 720 0H0V48Z" fill="currentColor"></path>
                </svg>
            </div>
        </div>
        <div :class="isActive ? 'fixed' : 'hidden'" class="bg-black/[0.9] top-0 left-0 bottom-0 w-[100%] h-[100%] z-999">
            <div class="h-[100%] flex items-center justify-center">
                <div class="relative inline-block">
                    <iframe src="https://www.youtube.com/embed/S_CGed6E610" width="700" height="500"
                        frameborder="0"></iframe>
                    <a class="mdi mdi-close text-white absolute top-1 right-1 text-xl" @click="toggle"></a>
                </div>
            </div>
        </div>
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
import image1 from '../assets/images/bg/1.jpg'
import NavLight from '@/components/NavLight.vue'
import About from '@/components/About.vue'
import Features from '@/components/Features.vue'
import AgencyTab from '@/components/AgencyTab.vue'
import Cta from '@/components/Cta.vue'
import Client from '@/components/Client.vue'
import Pricing from '@/components/Pricing'
import Blogs from '@/components/Blogs.vue'
import GetInTouch from '@/components/GetInTouch.vue'









export default {
    name: "IndexPage",
    data() {
        return {
            isActive: false,
            images: [
                {
                    id: 1,
                    src: image1,

                },
            ]
        }
    },
    components: {
        NavLight,
        About,

        Features,
        AgencyTab,
        Cta,
        Client,
        Pricing,
        Blogs,
        GetInTouch








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
}
</script>

<style lang="scss" scoped></style>