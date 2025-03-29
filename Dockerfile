FROM n8nio/n8n

# Configuración básica de autenticación (modifica las credenciales)
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=jooanponss
ENV N8N_BASIC_AUTH_PASSWORD=pOKERqUIMnINAgUIDA

# Configuración del webhook
ENV WEBHOOK_TUNNEL_URL=https://tu-app.onrender.com

# Exponer el puerto 5678
EXPOSE 5678
CMD ["n8n", "start"]
