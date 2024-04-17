# Usa la imagen oficial de Node.js como
FROM node:14

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /usr/src/app

# Instala las dependencias de la aplicación
RUN npm install

# Copia el resto de los archivos de la aplicación
COPY . .

# Expone el puerto 3000 en el contenedor
EXPOSE 3000

# Comando para ejecutar la aplicación cuando se inicie el contenedor
CMD ["npm", "start"]
