<template>
    <section class="relative md:py-24 py-16 bg-slate-50 dark:bg-slate-800" id="services">
        <div class="container relative">
            <div class="grid grid-cols-1 pb-6 text-center">
                <h3 class="font-semibold text-2xl leading-normal mb-4">Ventajas</h3>

                <p class="text-slate-400 max-w-xl mx-auto">Estas ventajas no solo optimizan los procesos de tu negocio, sino que también mejoran la experiencia de tus clientes.</p>
            </div><!--end grid-->

            <div class="grid lg:grid-cols-4 md:grid-cols-2 sm:grid-cols-2 grid-cols-1 gap-6 mt-6">
                <div v-for="item in servicesData" :key="item.id" class="group rounded-md shadow dark:shadow-gray-700 relative bg-white dark:bg-slate-900 p-6 overflow-hidden h-fit">
                    <div class="flex items-center justify-center size-14 -rotate-45 bg-gradient-to-r from-transparent to-teal-500/10 text-teal-500 text-center rounded-full group-hover:bg-teal-500/10 duration-500">
                        <i :data-feather="item.icon" class="size-6 rotate-45"></i>
                    </div>

                    <div class="content mt-6 relative z-1">
                        <a href="" class="title text-lg font-semibold hover:text-tea    l-500">{{item.title}}</a>
                        <p class="text-slate-400 mt-3">{{item.desc}}</p>

                        <!-- <div class="mt-6">
                            <a href="" class="text-teal-500">Read More <i class="mdi mdi-chevron-right align-middle"></i></a>
                        </div> -->
                    </div>

                    <div class="absolute bottom-0 -end-16">
                        <i :data-feather="item.icon" class="size-48 text-teal-500 opacity-[0.04] dark:opacity-[0.04] group-hover:opacity-10 duration-500"></i>
                    </div>
                </div>
            </div><!--end grid-->
        </div><!--end container-->
    </section>
</template>

<script>
 import feather from 'feather-icons'
    export default {
        data(){
            return{
                servicesData :[
                    {
                        id: 1,
                        icon: 'cloud',
                        title: 'Acceso desde cualquier lugar',
                        desc: 'Gestiona tus facturas desde cualquier dispositivo con conexión a internet, sin restricciones de ubicación.'
                    },
                    {
                        id: 2,
                        icon: 'clock',
                        title: 'Ahorro de tiempo',
                        desc: 'Automatiza cálculos y formatos para reducir el tiempo dedicado a la facturación.'
                    },
                    {
                        id: 3,
                        icon: 'shield',
                        title: 'Cumplimiento legal garantizado',
                        desc: 'Mantente al día con las normativas fiscales vigentes, como las exigidas por la AFIP.'
                    },
                    {
                        id: 4,
                        icon: 'trending-down',
                        title: 'Reducción de costos',
                        desc: 'Evita gastos en papel, impresoras y almacenamiento físico de documentos.'
                    },
                    {
                        id: 5,
                        icon: 'align-justify',
                        title: 'Mayor organización',
                        desc: 'Conserva todas tus facturas en un solo lugar, facilitando búsquedas y reportes.'
                    },
                    {
                        id: 6,
                        icon: 'database',
                        title: 'Seguridad y respaldo',
                        desc: 'Protege tus datos con copias de seguridad en la nube, evitando pérdidas o extravíos.'
                    },
                    {
                        id: 7,
                        icon: 'send',
                        title: 'Envío rápido',
                        desc: 'Envía facturas automáticamente por correo electrónico para agilizar los procesos. * Próximamente disponible.'
                    },
                    {
                        id: 8,
                        icon: 'globe',
                        title: 'Eco-amigable',
                        desc: 'Elimina el uso de papel y contribuye a la sostenibilidad del medio ambiente.'
                    }
                ]

                /* servicesData :[
                    {
                        id:1,
                        icon:'trending-up',
                        title:'Acceso desde cualquier lugar:',
                        desc:'If the distribution of letters and words is random, the reader will not be distracted from making.'
                    },
                    {
                        id:2,
                        icon:'dollar-sign',
                        title:'Grow Your Business',
                        desc:'If the distribution of letters and words is random, the reader will not be distracted from making.'
                    },
                    {
                        id:3,
                        icon:'compass',
                        title:'Grow Your Business',
                        desc:'If the distribution of letters and words is random, the reader will not be distracted from making.'
                    },
                    {
                        id:4,
                        icon:'command',
                        title:'Grow Your Business',
                        desc:'If the distribution of letters and words is random, the reader will not be distracted from making.'
                    },
                    {
                        id:5,
                        icon:'box',
                        title:'Grow Your Business',
                        desc:'If the distribution of letters and words is random, the reader will not be distracted from making.'
                    },
                    {
                        id:6,
                        icon:'camera',
                        title:'Grow Your Business',
                        desc:'If the distribution of letters and words is random, the reader will not be distracted from making.'
                    },
                    {
                        id:7,
                        icon:'bell',
                        title:'Grow Your Business',
                        desc:'If the distribution of letters and words is random, the reader will not be distracted from making.'
                    },
                    {
                        id:8,
                        icon:'monitor',
                        title:'Grow Your Business',
                        desc:'If the distribution of letters and words is random, the reader will not be distracted from making.'
                    },
                ] */
            }
        },

        mounted() {
        feather.replace();
        }
    
    }
</script>