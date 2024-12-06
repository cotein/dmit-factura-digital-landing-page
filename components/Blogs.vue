<template>
    <div>
        <section class="relative md:py-24 py-16" id="blog">
            <div class="container relative">
                <div class="grid grid-cols-1 pb-6 text-center">
                    <h3 class="font-semibold text-2xl leading-normal mb-4">Blog or News</h3>

                    <p class="text-slate-400 max-w-xl mx-auto">This is just a simple text made for this unique and awesome
                        template, you can replace it with any text.</p>
                </div><!--end grid-->

                <div class="grid lg:grid-cols-3 md:grid-cols-2 grid-cols-1 mt-6 gap-6">
                    <div v-for="blog in blogData" :key="blog.id" class="group relative overflow-hidden">
                        <div class="relative overflow-hidden rounded-md shadow dark:shadow-gray-800">
                            <img :src="blog.src" class="group-hover:scale-110 duration-500" alt="">
                        </div>

                        <div class="mt-6">
                            <div class="flex mb-4">
                                <span class="flex items-center text-slate-400 text-sm"><i data-feather="calendar"
                                        class="size-4 text-slate-900 dark:text-white me-1.5"></i>{{ blog.date }}</span>
                                <span class="flex items-center text-slate-400 text-sm ms-3"><i data-feather="clock"
                                        class="size-4 text-slate-900 dark:text-white me-1.5"></i>5 min read</span>
                            </div>

                            <a href="" class="title text-lg font-semibold hover:text-teal-500 duration-500 ease-in-out">{{
                                blog.title }}</a>
                            <p class="text-slate-400 mt-2">{{ blog.decs }}</p>

                            <div class="mt-3">
                                <a href="" class="text-teal-500">Read More <i
                                        class="mdi mdi-chevron-right align-middle"></i></a>
                            </div>
                        </div>
                    </div><!--end content-->
                </div><!--end grid-->
            </div><!--end container-->
        </section><!--end section-->
        <!-- End Blog -->
        <!-- <ul>
            <div v-for="image in blogData" :key="image.id">
                <img :src="image.src" :alt="image.alt" />
            </div>
        </ul> -->
    </div>
</template>

<script>
import feather from 'feather-icons'
import myImage from '~/assets/images/blog/01.jpg';
import myImage2 from '~/assets/images/blog/02.jpg';
import myImage3 from '~/assets/images/blog/03.jpg';

export default {
    data() {
        return {
            blogData: [

                {
                    id: 1, src: myImage, alt: 'Image 1',
                    title: 'Design your apps in your own way',
                    decs: 'This is required when, for example, the final text is not yet available.',
                    date: '13th March 2023'
                },

                {
                    id: 2, src: myImage2, alt: 'Image 2',
                    title: 'How apps is changing the IT world',
                    decs: 'This is required when, for example, the final text is not yet available.',
                    date: '5th May 2023'
                },


                {
                    id: 3, src: myImage3, alt: 'Image 3',
                    title: 'Smartest Applications for Business',
                    decs: 'This is required when, for example, the final text is not yet available.',
                    date: '19th June 2023'
                },



            ],
        };
    },
    mounted() {
        feather.replace();
        }
};
</script>