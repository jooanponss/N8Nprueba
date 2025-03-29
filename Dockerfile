# 1. Usa una imagen base de Node.js (versión 16, que es compatible con N8N)
FROM node:16

# 2. Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# 3. Copia el archivo `package.json` y `package-lock.json` (si lo tienes)
# Esto asegura que solo se instalen las dependencias primero, sin necesidad de copiar todo el código
COPY package*.json ./

# 4. Instala las dependencias de N8N
RUN npm install

# 5. Copia todo el código fuente del proyecto (todo lo demás)
COPY . .

# 6. Exponer el puerto 5678 (puerto por defecto en el que corre N8N)
EXPOSE 5678

# 7. Establecer una variable de entorno para los permisos de configuración de N8N
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true

# 8. Comando para iniciar N8N cuando el contenedor se ejecute
CMD ["n8n"]
