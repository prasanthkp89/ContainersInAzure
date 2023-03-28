FROM nginx
LABEL AUTHOR=Prasanth

RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get -y install vim 

COPY index.html /usr/share/nginx/html
 
EXPOSE 8080
 
CMD ["nginx", "-g", "daemon off;"]
