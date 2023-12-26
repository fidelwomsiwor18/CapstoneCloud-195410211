FROM nginx:latest

RUN apt-get update && apt-get upgrade -y
RUN apt-get install wget unzip -y

WORKDIR /usr/share/nginx/html
COPY default.conf /etc/nginx/sites-enabled/

ADD https://github.com/fidelwomsiwor18/CapstoneCloud-195410211/blob/62b3c06881cc0452d5952a4d76757ac8765670d7/WebStatis-195410211.zip .
RUN unzip WebStatis-195410211.zip 
RUN mv WebStatis-195410211.zip /* .
RUN rm -rf WebStatis-195410211 WebStatis-195410211.zip .zip

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
