FROM n8nio/n8n:latest

# Render өз портын ENV арқылы береді, сондықтан N8N_PORT Render портын қолданады
ENV N8N_PORT=$PORT
ENV N8N_HOST=0.0.0.0
ENV N8N_PROTOCOL=http

# Таймзона
ENV GENERIC_TIMEZONE="Asia/Almaty"

# Деректерді сақтау
WORKDIR /data
VOLUME /home/node/.n8n

EXPOSE 8080

# Render PORT айнымалысына автоматты түрде қояды
CMD ["n8n", "start"]
