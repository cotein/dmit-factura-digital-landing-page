// https://nuxt.com/docs/api/configuration/nuxt-config
export default defineNuxtConfig( {

  devtools: { enabled: true },
  css: [
    '~/assets/scss/tailwind.scss',
    '~/assets/css/materialdesignicons.min.css',

  ],
  modules: [ '@nuxtjs/color-mode', '@nuxt/ui', "nuxt-og-image" ],
  build: {
    transpile: [ 'vue-countup-v3' ],
  },
  carousel: {
    prefix: 'MyPrefix'
  },
  app: {
    head: {
      title: 'DMIT - Facturación digital',
      titleTemplate: 'DMIT - Facturación digital',
      htmlAttrs: { dir: 'ltr', lang: 'en', class: 'dark' },
      bodyAttrs: {
        class: 'font-libre_franklin text-base text-black dark:text-white bg-white dark:bg-slate-900',
      },
      meta: [
        { charset: 'utf-8' },
        {
          name: 'viewport',
          content: 'width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no',
        },
        { hid: 'description', name: 'description', content: '' },
        { name: 'format-detection', content: 'telephone=no' },
      ],
      link: [
        {
          rel: 'stylesheet',
          href: 'https://cdnjs.cloudflare.com/ajax/libs/tiny-slider/2.9.4/tiny-slider.css',
        },
      ],
      script: [
        {
          src: 'https://cdnjs.cloudflare.com/ajax/libs/tiny-slider/2.9.2/min/tiny-slider.js'
        }
      ]
    },
  },
  postcss: {
    plugins: {
      tailwindcss: {},
      autoprefixer: {},
    },
  },

} )
