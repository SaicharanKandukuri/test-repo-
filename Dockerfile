FROM ubuntu

COPY gg.sh /gg.sh
COPY ff.sh /ff.sh

ENTRYPOINT [ "/gg.sh" ]