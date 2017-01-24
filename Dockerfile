FROM alpine:3.5

RUN apk update && apk add unbound
ADD unbound.conf /etc/unbound/unbound.conf

CMD ["/usr/sbin/unbound"]
EXPOSE 53/udp
