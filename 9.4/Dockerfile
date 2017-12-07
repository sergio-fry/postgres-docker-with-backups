FROM postgres:9.4

RUN apt-get update && apt-get install -y vim-nox
RUN apt-get install -y duplicity

COPY bin/* /usr/local/bin/

VOLUME /root/.cache/duplicity
VOLUME /dumps
VOLUME /backups

ENTRYPOINT ["start-cron-and-postgres.sh"]
CMD ["postgres"]
