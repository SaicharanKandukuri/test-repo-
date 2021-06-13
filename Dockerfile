FROM alpine

COPY gg.sh /gg.sh

ENTRYPOINT [ "/gg.sh" ]