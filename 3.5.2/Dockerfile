FROM python:3.5.2-alpine

RUN apk add --no-cache curl \
    && curl -fLsS -o /usr/bin/dumb-init https://github.com/Yelp/dumb-init/releases/download/v1.1.3/dumb-init_1.1.3_amd64 \
    && chmod +x /usr/bin/dumb-init \
    && rm -rf /var/cache/apk/* \
    && pip install --upgrade pip \
    && pip install eve

WORKDIR /source

VOLUME /source

EXPOSE 8000

ENTRYPOINT ["/usr/bin/dumb-init", "--"]

CMD ["python", "main.py"]