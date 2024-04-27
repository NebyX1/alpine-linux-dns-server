FROM alpine:latest

# Instalar Bind9 y herramientas necesarias
RUN apk add --update bind bind-dnssec-tools sudo nano && \
    rm -rf /var/cache/apk/*

# Crear los directorios necesarios para Bind
RUN mkdir -p /etc/bind /var/cache/bind /var/log/named && \
    chown -R named:named /etc/bind /var/cache/bind /var/log/named && \
    chmod -R 770 /etc/bind /var/cache/bind /var/log/named

# Copiar archivos de configuración predefinidos
COPY bind-config/ /etc/bind/

# Exponer el puerto DNS
EXPOSE 53/udp
EXPOSE 53/tcp

# Ejecutar Bind en foreground para que Docker no cierre el contenedor
CMD ["named", "-g"]