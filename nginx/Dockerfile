FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y wget curl nginx

COPY ./your-site /var/www/html

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]

