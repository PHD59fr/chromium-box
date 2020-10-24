FROM alpine:edge
MAINTAINER PHD
RUN apk --no-cache add openbox xvfb supervisor chromium bash\
&& addgroup alpine \
&& adduser  -G alpine -s /bin/sh -D alpine \
&& rm -rf /apk /tmp/* /var/cache/apk/*
ADD etc /etc
WORKDIR /home/alpine
USER alpine
CMD ["/usr/bin/supervisord","-c","/etc/supervisord.conf"]
