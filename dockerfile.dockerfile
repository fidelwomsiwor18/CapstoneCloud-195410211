FROM nginx:latest

RUN apt-get update && apt-get upgrade -y
RUN apt-get install wget unzip -y

WORKDIR /usr/share/nginx/html
COPY default.conf /etc/nginx/sites-enabled/

ADD .
RUN unzip CapstoneCloud_225410076.zip
RUN mv CapstoneCloud_225410076/* .
RUN rm -rf CapstoneCloud_225410076 CapstoneCloud_225410076.zip

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
