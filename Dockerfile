FROM openjdk:8-stretch

RUN apt-get update \
  && apt-get install -y python python-pip
RUN pip install watchdog \
  && mkdir /tool 

WORKDIR /tool
COPY . /tool
RUN chmod +x build.sh && ./build.sh
ENV TWITTER_NLP=./

CMD ["python2", "/tool/main.py"]