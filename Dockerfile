FROM ubuntu:latest
RUN sudo apt update
RUN sudo apt install python3 -y 
WORKDIR app
COPY . . 
EXPOSE 8000
CMD [ "python3", "./print.py" ]