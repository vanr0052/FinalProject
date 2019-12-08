echo "FROM ubuntu:latest
RUN apt update && apt install -y nginx && apt install unzip
COPY Archive.zip  /var/www/html
WORKDIR /var/www/html
RUN unzip Archive.zip
CMD [\"/usr/sbin/nginx\", \"-g\" , \"daemon off;\"]
EXPOSE 80">> Dockerfile
docker build . -t finalproject:v1
docker run -p 1234:80 finalproject:v1