FROM mongo:3.2
MAINTAINER Stefano Fiorentino <stefano.fiore84@gmail.com>
LABEL Description="Provide a MongoDB instance with last dump restored"

COPY ./dump /data/backups/dump

ENTRYPOINT ["/entrypoint.sh"]

EXPOSE 27017
CMD ["mongod"]

# RUN cd /data/backups && \
    # mongorestore --db mp $( ls -tr | grep -v "tar.gz" | tail -n 1 )/mp
    