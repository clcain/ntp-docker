FROM debian:jessie-slim

RUN apt-get update && apt-get install -y ntp && apt-get clean

COPY ntp.conf /etc/ntp.conf

EXPOSE 123/udp

CMD ntpd -n
