# Etapa 1: Construcción de la aplicación Nuxt
FROM node:20.15.0 as builder

# Establecer el directorio de trabajo
WORKDIR /usr/src/app

# Copiar el package.json y el package-lock.json
COPY package*.json ./

# Instalar dependencias
RUN npm install

# Copiar el código fuente de la aplicación
COPY . .

# Construir la aplicación Nuxt
RUN npm run build


CMD ["node", ".output/server/index.mjs"]

# Exponer el puerto 3000
EXPOSE 3000

