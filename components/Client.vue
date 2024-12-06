<template>
    <section class="relative md:py-24 py-16" id="review">
        <div class="container relative">
            <div class="grid grid-cols-1 pb-6 text-center">
                <h3 class="font-semibold text-2xl leading-normal mb-4">What Our Users Say</h3>

                <p class="text-slate-400 max-w-xl mx-auto">This is just a simple text made for this unique and awesome
                    template, you can replace it with any text.</p>
            </div><!--end grid-->

            <div class="grid lg:grid-cols-3 sm:grid-cols-2 grid-cols-1 mt-6 gap-6">
                <ul v-for="client in clientData" :key="client.index" class="space-y-8">
                    <li class="rounded-lg shadow-lg dark:shadow-gray-800 p-6 bg-white dark:bg-slate-900">
                        <div class="flex items-center pb-6 border-b border-gray-100 dark:border-gray-800">
                            <img :src="client.image1" class="size-14 rounded-full shadow dark:shadow-gray-800" alt="">
                            <div class="ps-4">
                                <a href="" class="font-semibold">{{ client.name1
                                }}</a>
                                <p class="text-slate-400 text-sm">{{ client.position1 }}</p>
                            </div>
                        </div>
                        <div class="mt-6">
                            <p class="text-slate-400">{{ client.desc1 }}</p>
                            <ul class="list-none mb-0 text-amber-400 mt-2">
                                <li class="inline"><i class="mdi mdi-star"></i></li>
                                <li class="inline"><i class="mdi mdi-star"></i></li>
                                <li class="inline"><i class="mdi mdi-star"></i></li>
                                <li class="inline"><i class="mdi mdi-star"></i></li>
                                <li class="inline"><i class="mdi mdi-star"></i></li>
                            </ul>
                        </div>
                    </li>
                    <li class="rounded-lg shadow-lg dark:shadow-gray-800 p-6 bg-white dark:bg-slate-900">
                        <div class="flex items-center pb-6 border-b border-gray-100 dark:border-gray-800">
                            <img :src="client.image2" class="size-14 rounded-full shadow dark:shadow-gray-800"
                                alt="">
                            <div class="ps-4">
                                <a href="" class="font-semibold">{{ client.name2 }}</a>
                                <p class="text-slate-400 text-sm">{{ client.position2 }}</p>
                            </div>
                        </div>
                        <div class="mt-6">
                            <p class="text-slate-400">{{ client.desc2 }}</p>
                            <ul class="list-none mb-0 text-amber-400 mt-2">
                                <li class="inline"><i class="mdi mdi-star"></i></li>
                                <li class="inline"><i class="mdi mdi-star"></i></li>
                                <li class="inline"><i class="mdi mdi-star"></i></li>
                                <li class="inline"><i class="mdi mdi-star"></i></li>
                                <li class="inline"><i class="mdi mdi-star"></i></li>
                            </ul>
                        </div>
                    </li>
                </ul>
              
            </div>
        </div>
    </section>
</template>

<script>
import image1 from "../assets/images/team/01.jpg"
import image2 from "../assets/images/team/05.jpg"
import image3 from "../assets/images/team/02.jpg"
import image4 from "../assets/images/team/04.jpg"
import image5 from "../assets/images/team/03.jpg"
import image6 from "../assets/images/team/06.jpg"

export default {
    name: "client",
    data() {
        return {
            clientData: [
                {
                    id: 1,
                    image1: image1,
                    image2: image2,
                    name1: "Thomas Israel",
                    name2: "Barbara McIntosh",
                    position1: 'C.E.O',
                    position2: 'C.E.O',
                    desc1: "I didn't know a thing about icon design until I read this book. Now I can create any icon I need in no time. Great resource!",
                    desc2: "There are so many things I had to do with my old software that I just don't do at all with Techwind. Suspicious but I can't say I don't love it."

                },
                {
                    id: 1,
                    image1: image3,
                    image2: image4,
                    name1: "Carl Oliver",
                    name2: "Jill Webb",
                    position1: 'C.E.O',
                    position2: 'C.E.O',
                    desc1: "The best part about Techwind is every time I pay my employees, my bank balance doesn't go down like it used to. Looking forward to spending this extra cash when I figure out why my card is being declined.",
                    desc2: "I'm trying to get a hold of someone in support, I'm in a lot of trouble right now and they are saying it has something to do with my books. Please get back to me right away."

                },
                {
                    id: 1,
                    image1: image5,
                    image2: image6,
                    name1: "Barbara McIntosh",
                    name2: "Janisha Doll",
                    position1: 'C.E.O',
                    position2: 'C.E.O',
                    desc1: "TI used to have to remit tax to the EU and with Techwind I somehow don't have to do that anymore. Nervous to travel there now though.",
                    desc2: "This is the fourth email I've sent to your support team. I am literally being held in jail for tax fraud. Please answer your damn emails, this is important."

                },
            ]
        }
    },
}
</script>

<style lang="scss" scoped></style>