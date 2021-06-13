FROM ubuntu-latest

COPY gg.sh /gg.sh

ENTRYPOINT [ "/gg.sh" ]