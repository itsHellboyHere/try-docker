# docker pull debian:latest
# docker run -it debian:latest /bin/bash
# docker build -f Dockerfile -t cfe.py  
# docker run -p 3000:8080 cfe-py
# apt-get 
# apt-get install python3
# pyhton3 -m http.server 8080

FROM debian:latest

RUN apt-get update
RUN apt-get install python3 -y

COPY ./app ./app-copy

CMD python3 -m http.server 8080
