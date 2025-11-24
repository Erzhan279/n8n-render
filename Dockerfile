FROM n8nio/n8n:latest

# Render автоматты түрде PORT береді
ENV N8N_PORT=$PORT
ENV N8N_HOST=0.0.0.0
ENV N8N_PROTOCOL=http

# Basic Auth автоматты түрде жұмыс істейді
ENV N8N_BASIC_AUTH_ACTIVE=true

# Security warnings fix
ENV N8N_GIT_NODE_DISABLE_BARE_REPOS=true
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true

# Timezone
ENV GENERIC_TIMEZONE="Asia/Almaty"

# Data volume
VOLUME /home/node/.n8n

EXPOSE 5678

CMD ["n8n", "start"]
