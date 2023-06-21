FROM ubuntu:latest
WORKDIR app
COPY . . 
RUN apt update
RUN apt install python3 -y
RUN apt-get install -y nginx
RUN service nginx start 
EXPOSE 8000
CMD [ "python3", "./print.py" ]