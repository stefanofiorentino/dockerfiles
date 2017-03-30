FROM mongo:3.2
MAINTAINER Stefano Fiorentino <stefano.fiore84@gmail.com>
LABEL Description="Provide a MongoDB instance with last dump restored"

ADD dump /home/dump
COPY mongo.sh /home/mongo.sh
RUN chmod 777 /home/mongo.sh

CMD /home/mongo.sh
