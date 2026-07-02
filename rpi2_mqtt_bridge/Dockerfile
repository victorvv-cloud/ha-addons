FROM ghcr.io/home-assistant/aarch64-base-python:3.12-alpine

RUN apk add --no-cache python3 py3-pip
RUN pip3 install --no-cache-dir rpi2home-assistant

COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
