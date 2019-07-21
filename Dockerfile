FROM rewrew/twitter-nlp

COPY ./python/ner/extractEntitiesLoop.py /tool/python/ner/
ENV TWITTER_NLP=./

RUN mkdir /data

CMD ["python2", "/tool/python/ner/extractEntitiesLoop.py", "/data", "--classify"]
