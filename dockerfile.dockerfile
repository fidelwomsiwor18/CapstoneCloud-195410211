FROM nginx:latest

RUN apt-get update && apt-get upgrade -y
RUN apt-get install wget unzip -y

WORKDIR /usr/share/nginx/html
COPY default.conf /etc/nginx/sites-enabled/

ADD https://github.com/fidelwomsiwor18/CapstoneCloud-195410211/raw/master/WebStatis-195410211.zip .
RUN unzip WebStatis-195410211.zip 
RUN mv CapstoneCloud-195410211/* .
RUN rm -rf WebStatis-195410211 WebStatis-195410211.zip

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
