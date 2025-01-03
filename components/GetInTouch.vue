<script setup lang="ts">
import { z } from 'zod';
import type { FormSubmitEvent } from '#ui/types'
import {ref} from 'vue';

const toast = useToast()

const schema = z.object({
  email: z.string().email('Email inválido'),
  name: z.string().min(4, 'El nombre debe poseer al menos 4 letras'),
  subject: z.string().min(8, 'El nombre debe ser requerido'),
  comments: z.string().min(8, 'El mensaje debe ser requerido'),
})

const loading = ref<boolean>(false)

type Schema = z.output<typeof schema>

const state = ref({ name: '', email: '', subject: '', comments: '', });

const onSubmit = async (event: FormSubmitEvent<Schema>) => {
    loading.value = true;
    

    const message = {
        from: 'info@dmit.ar',
        to: 'diego.barrueta@gmail.com',
        cc: 'marcelo.j.callao@gmail.com',
        subject: state.value.subject,
        html: `<div style="font-family: Arial, sans-serif; color: #333;">
            <div style="background-color: #f7f7f7; padding: 20px; border-radius: 10px; max-width: 600px; margin: auto;">
            <h2 style="color: #4CAF50;">Nueva consulta,</h2>
            <p style="font-size: 16px;">Se ha recibido un nuevo mensaje desde DMIT.ar.</p>
            <p style="font-size: 16px;">Quien manda el mensaje ${ state.value.name } </p>
            <p style="font-size: 16px; font-weight: bold;">El email a donde responder ${state.value.email}</p>
            <p style="font-size: 16px;">Mensaje: ${ state.value.comments } </p>
            </div>
        </div>`,
    }

    const { data, error } = await useFetch( 'https://emailsender.dmit.ar/api/email-sender', {
        method: 'POST',
        body: message
    } );

    console.log("🚀 ~ onSubmit ~ data:", data.value)

    if (data.value) {
        loading.value = false
        toast.add({
            title: 'Mensaje enviado exitosamente',
            description: 'Hemos recibido su consulta a la brevedad nos contactaremos con Ud. Equipo de DMIT.',
            
        })
    }else{
        loading.value = false
        console.log("🚀 ~ onSubmit ~ false:", error)
        toast.add({
            title: 'Ha ocurrido un error',
            description: 'No se ha podido enviar su consulta.',
            
        })
        
    }

    state.value.comments = ''
    state.value.email = ''
    state.value.name = ''
    state.value.subject = ''
}


</script>
<template>
     <section class="relative lg:py-24 py-16 bg-slate-50 dark:bg-slate-800" id="contact">
            <div class="container relative">
                <div class="grid grid-cols-1 pb-6 text-center">
                    <h3 class="font-semibold text-2xl leading-normal mb-4">Contáctanos: Estamos Aquí para Ayudarte </h3>

                    <p class="text-slate-400 max-w-xl mx-auto">¿Tienes preguntas o necesitas soporte? Estamos a tu disposición para resolver cualquier duda sobre nuestra plataforma de facturación electrónica. Completa el formulario. ¡Queremos que tu experiencia sea rápida y sencilla!</p>
                </div><!--end grid-->

                <div class="grid md:grid-cols-12 grid-cols-1 items-center gap-6">
                    <div class="lg:col-span-7 md:col-span-6">
                        <img src="../assets/images/contact.svg" alt="">
                    </div>

                    <div class="lg:col-span-5 md:col-span-6">
                        <div class="lg:ms-5">
                            <div class="bg-white dark:bg-slate-900 rounded-md shadow dark:shadow-gray-700 p-6">
                                <UForm :schema="schema" :state="state" class="space-y-4" @submit="onSubmit"> 
                                    <UFormGroup label="Tú Nombre y Apellido" name="name"> 
                                        <UInput v-model="state.name" size="lg" icon="i-ic-baseline-person" :disabled="loading"/> 
                                    </UFormGroup> 
                                    
                                    <UFormGroup label="Tú Email" name="email"> 
                                        <UInput v-model="state.email" type="email" size="lg" icon="i-material-symbols-alternate-email" :disabled="loading"/> 
                                    </UFormGroup> 
                                    <UFormGroup label="Tú pregunta" name="subject" > 
                                        <UInput v-model="state.subject" size="lg" :disabled="loading"/> 
                                    </UFormGroup> 
                                    <UFormGroup label="Comentario" name="comments"> 
                                        <UTextarea v-model="state.comments" :rows="7" placeholder="Mensaje..." :disabled="loading"/> 
                                    </UFormGroup>
                                    <UButton type="submit" icon="i-mdi-send" :disabled="loading" :loading="loading"> Enviar</UButton> 
                                </UForm>
                            </div>
                        </div>
                    </div>
                </div>
            </div><!--end container-->
        </section>
</template>
