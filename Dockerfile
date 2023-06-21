FROM ubuntu:latest
RUN apt update
RUN apt install pyhton3 -y 
WORKDIR app
COPY . . 
EXPOSE 8000
CMD [ "pyhton3", "./print.py" ]