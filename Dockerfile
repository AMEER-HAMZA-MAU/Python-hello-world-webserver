FROM ubuntu:latest
WORKDIR app
COPY . /app
RUN apt update
RUN apt install python3 -y
RUN apt-get install -y nginx
RUN service nginx start 
EXPOSE 80
ENV NAME World
CMD [ "python3", "./print.py" ]