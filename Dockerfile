FROM alpine

RUN apk add aria2

ADD aria2.conf /root/.aria2/aria2.conf

RUN touch /root/.aria2/aria2.session

EXPOSE 6800 \
       51413

CMD ["/usr/bin/aria2c", "--conf-path=/root/.aria2/aria2.conf"]