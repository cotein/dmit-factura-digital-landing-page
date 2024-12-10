# Author : Vongkeo KSV

# Pull the base image 
FROM node:20.15.0 as builder

# set working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all files
COPY . .

# Construir la aplicación Nuxt
RUN npm run build

# Etapa 2: Configuración de Nginx 
FROM nginx:1.26.2

# Copiar archivos de construcción de Nuxt 
COPY --from=builder /usr/src/app/.output/public /usr/share/nginx/html

# Copiar archivo de configuración de Nginx
COPY ./nginx/nginx.conf /etc/nginx/nginx.conf

# Exponer el puerto 80 
EXPOSE 80

# Iniciar Nginx 
CMD ["nginx", "-g", "daemon off;"]