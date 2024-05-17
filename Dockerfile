FROM alpine:latest 

RUN apk add --no-cache bash doas shadow 
COPY ./entrypoint.sh /entrypoint.sh
COPY runAs.sh /root/runAs.sh
ENTRYPOINT ["/entrypoint.sh"]