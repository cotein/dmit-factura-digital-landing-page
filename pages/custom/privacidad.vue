<template>
  <section class="text-gray-700 list-style-disc">
            <p>La presente Política de Privacidad describe cómo **N8n Kernel Flow** ("nosotros", "nuestro" o "la Aplicación") recopila, utiliza y protege la información personal obtenida a través del uso de la herramienta de automatización n8n alojada en <strong>https://n8n.dynamichome.ar</strong>.</p>

            <h2 class="text-2xl font-bold text-gray-800">1. Información que Recopilamos</h2>
            <p>Dado que nuestra aplicación está construida sobre n8n y se enfoca en la automatización de flujos de trabajo (workflows), la información recopilada se divide en dos categorías:</p>

            <h3 class="text-xl font-semibold text-gray-800 mt-4">A. Información de la Cuenta y Uso (Datos de la Aplicación)</h3>
            <p>Recopilamos la información necesaria para gestionar tu cuenta y el uso de la plataforma:</p>
            <ul class="list-disc ml-6 space-y-2">
                <li>**Datos de Identificación de Usuario:** Se recogen al iniciar sesión a través de OAuth de Google, incluyendo tu nombre y dirección de correo electrónico.</li>
                <li>**Datos de Uso de la Plataforma:** Información sobre los flujos de trabajo (workflows) que creas, la frecuencia de las ejecuciones, registros de errores y datos de rendimiento del servidor n8n.</li>
                <li>**Credenciales de Terceros (Secretos):** Al configurar nodos de aplicaciones externas (ej. Google Sheets, Mercado Libre, Slack), almacenas credenciales (API Keys, tokens OAuth) en nuestra instancia de n8n. **Estas credenciales se almacenan cifradas en la base de datos de la instancia n8n y NUNCA son visibles para nosotros directamente.**</li>
            </ul>

            <h3 class="text-xl font-semibold text-gray-800 mt-4">B. Datos Procesados por los Flujos de Trabajo (Datos de Tráfico)</h3>
            <p>Nuestra aplicación procesa datos que tú introduces y que viajan a través de tus automatizaciones.</p>
            <ul class="list-disc ml-6 space-y-2">
                <li>**Naturaleza de los Datos:** Estos pueden incluir correos electrónicos, información de clientes, datos de ventas, información de inventario o cualquier otro dato que tus flujos de trabajo manejen.</li>
                <li>**Control:** Nosotros actuamos como un **procesador de datos**. El **controlador de datos** eres tú. Nosotros no inspeccionamos, utilizamos ni compartimos los datos que fluyen a través de tus automatizaciones. Estos datos solo existen para la ejecución de los flujos.</li>
            </ul>

            <h2 class="text-2xl font-bold text-gray-800">2. Cómo Utilizamos tu Información</h2>
            <p>Utilizamos la información recopilada exclusivamente para los siguientes propósitos:</p>
            <ul class="list-disc ml-6 space-y-2">
                <li>**Proveer el Servicio:** Permitir el acceso y uso de la plataforma n8n, y ejecutar los flujos de trabajo que tú has configurado.</li>
                <li>**Mantenimiento y Rendimiento:** Monitorear el rendimiento del servidor y depurar errores para asegurar la estabilidad del servicio.</li>
                <li>**Comunicación:** Enviar avisos de servicio, actualizaciones y responder a consultas de soporte.</li>
            </ul>

            <h2 class="text-2xl font-bold text-gray-800">3. Almacenamiento y Seguridad de la Información</h2>
            <ul class="list-disc ml-6 space-y-2">
                <li>**Almacenamiento:** Los datos de tu cuenta, los flujos de trabajo y las credenciales cifradas se almacenan en el servidor de la instancia n8n alojada en **nuestro propio servidor bajo el dominio DynamicHome.ar**.</li>
                <li>**Medidas de Seguridad:** Implementamos medidas de seguridad técnicas y organizativas estándar de la industria (ej. cifrado, control de acceso) para proteger la información contra el acceso no autorizado y la divulgación.</li>
                <li>**Responsabilidad:** Aunque tomamos todas las precauciones razonables, no podemos garantizar la seguridad absoluta de la información transmitida por Internet.</li>
            </ul>

            <h2 class="text-2xl font-bold text-gray-800">4. Divulgación a Terceros</h2>
            <p>Solo compartiremos tu información personal en las siguientes circunstancias:</p>
            <ul class="list-disc ml-6 space-y-2">
                <li>**Cumplimiento Legal:** Si es requerido por ley o para responder a procesos legales válidos (órdenes judiciales o citaciones).</li>
                <li>**Proveedores de Servicio:** Con terceros que realizan servicios en nuestro nombre (ej. alojamiento del servidor, monitoreo) bajo estricto acuerdo de confidencialidad.</li>
            </ul>

            <h2 class="text-2xl font-bold text-gray-800">5. Tus Derechos</h2>
            <p>Como usuario, tienes derecho a:</p>
            <ul class="list-disc ml-6 space-y-2">
                <li>**Acceder y Modificar** tu información personal (principalmente a través de la interfaz de la propia aplicación n8n).</li>
                <li>**Eliminar** tu cuenta y todos los datos asociados (sujeto a las obligaciones legales de retención).</li>
            </ul>

            <h2 class="text-2xl font-bold text-gray-800">6. Cambios en la Política de Privacidad</h2>
            <p>Nos reservamos el derecho de modificar esta Política de Privacidad en cualquier momento. Si realizamos cambios sustanciales, te notificaremos por correo electrónico o mediante un aviso destacado en nuestra plataforma.</p>

            <h2 class="text-2xl font-bold text-gray-800">7. Contacto</h2>
            <p>Si tienes preguntas sobre esta Política de Privacidad o el manejo de tus datos, por favor contáctanos en:</p>
            <ul class="list-disc ml-6 space-y-2">
                <li>**Correo Electrónico:** diego.barrueta@dynamichome.ar</li>
                <li>**Dirección:** [Tu Dirección o un punto de contacto si lo deseas - Por favor, actualiza este campo]</li>
            </ul>
        </section>
</template>

<script lang="ts" setup>

</script>

<style>

</style>