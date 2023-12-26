FROM nginx:latest
RUN apt-get update && apt-get upgrade -y
RUN apt-get install wget unzip -y
WORKDIR /usr/share/nginx/html

COPY default.conf /etc/nginx/sites-enabled/
ADD https://github.com/marchel04/CapstoneCloud-225410046/raw/main/CapstoneCloud-225410046.zip .
RUN unzip CapstoneCloud-225410046.zip
RUN mv CapstoneCloud-225410046/* .

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
