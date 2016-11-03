FROM debian:8.6

EXPOSE 8080

RUN apt-get update ; apt-get install -y openconnect ocproxy
ADD entrypoint.sh .

ENTRYPOINT [ "./entrypoint.sh" ]
