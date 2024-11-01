# Usa la imagen base de Ubuntu
FROM ubuntu:latest

# Actualiza el sistema e instala Apache
RUN apt-get update && \
    apt-get install -y apache2 && \
    apt-get clean

# Copia el archivo HTML a la carpeta de Apache
COPY index.html /var/www/html/

# Expone el puerto 80 para el tráfico HTTP
EXPOSE 80

# Inicia Apache en primer plano
CMD ["apachectl", "-D", "FOREGROUND"]
