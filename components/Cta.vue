
<template>
   <div>
     <section class="relative md:py-24 py-16 md:pt-0 pt-0" id="services">
            <div class="container relative">
                <div class="grid grid-cols-1 justify-center">
                    <div class="relative z-1">
                        <div class="grid grid-cols-1 md:text-start text-center justify-center">
                            <div class="relative">
                                <img src="../assets/images/home.png" alt="">
                                <div class="absolute bottom-2/4 translate-y-2/4 start-0 end-0 text-center">
                                    <a href="#!" @click="toggle"
                                        class="lightbox size-20 rounded-full shadow-lg dark:shadow-gray-700 inline-flex items-center justify-center bg-white dark:bg-slate-900 text-teal-500 dark:text-white">
                                        <i class="mdi mdi-play inline-flex items-center justify-center text-2xl"></i>
                                    </a>
                                </div>
                              
                            </div>
                        </div>
                        <div class="content md:mt-8">
                            <div class="grid lg:grid-cols-12 grid-cols-1 md:text-start text-center justify-center">
                                <div class="lg:col-start-2 lg:col-span-10">
                                    <div class="grid md:grid-cols-2 grid-cols-1 items-center">
                                        <div class="mt-8">
                                            <div class="section-title text-md-start">
                                                <h6 class="text-white/70 text-sm font-semibold uppercase">Get Free Trial</h6>
                                                <h3 class="font-semibold text-2xl leading-normal text-white mt-2">Get An Easy Start <br> With Upcover Now</h3>
                                            </div>
                                        </div>

                                        <div class="mt-8">
                                            <div class="section-title text-md-start">
                                                <p class="text-white/70 max-w-xl mx-auto mb-2">This is just a simple text made for this unique and awesome template, you can replace it with any text.</p>
                                                <a href="" class="text-white">Read More <i class="mdi mdi-chevron-right align-middle"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div><!--end row -->
            </div><!--end container-->
            <div class="absolute bottom-0 start-0 end-0 sm:h-2/3 h-4/5 bg-gradient-to-b from-teal-400 to-teal-500"></div>
        </section>
          <div :class="isActive ? 'fixed' : 'hidden' " class="bg-black/[0.9] top-0 left-0 bottom-0 w-[100%] h-[100%] z-999">
                <div class="h-[100%] flex items-center justify-center">
                    <div class="relative inline-block">
                        <iframe src="https://www.youtube.com/embed/S_CGed6E610" width="700" height="500" frameborder="0"></iframe>
                        <a class="mdi mdi-close text-white absolute top-1 right-1 text-xl" @click="toggle"></a>
                    </div>
                </div>
          </div>
   </div>
</template>


<script>
export default {
    data(){
        return{
             isActive: false
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
    
}
</script>