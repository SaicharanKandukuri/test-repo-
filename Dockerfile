FROM ubuntu

COPY gg.sh /gg.sh

ENTRYPOINT [ "/gg.sh" ]