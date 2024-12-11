# Author : Vongkeo KSV

# Pull the base image 
FROM node:20.15.0 as builder

# set working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all files
COPY . .

# Construir la aplicación Nuxt
RUN npm run build && npm run generate

# Etapa 2: Configuración de Nginx 
FROM nginx:1.26.2 as production

# remove the default nginx.conf
RUN rm -rf /usr/share/nginx/html/*

# Copiar archivo de configuración de Nginx
COPY ./nginx/nginx.conf /etc/nginx/conf.d

# Copy static files from builder
COPY --from=builder /app/.output/public /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Iniciar Nginx 
CMD ["nginx", "-g", "daemon off;"]
