FROM ubuntu:latest
RUN apt update
RUN apt install python3 -y 
WORKDIR app
COPY . . 
EXPOSE 8000
CMD [ "python3", "./print.py" ]