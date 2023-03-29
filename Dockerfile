FROM alpine:3.17

LABEL maintainer="June Kim" version="1.0"

RUN set -eux \
  && apk update \
  && apk add --no-cache \
  python3 \
  py3-pip \
  py3-numpy \
  && pip3 install tensorboard

VOLUME /data

EXPOSE 8888

CMD ["/bin/sh", "-c","python3 -m tensorboard.main --logdir=/data --port 8888 --bind_all"]
