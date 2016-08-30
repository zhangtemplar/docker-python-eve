FROM python:2.7-alpine

COPY keys/config keys/id_rsa_docker /tmp/.ssh/

RUN apk add --no-cache openssh-client git curl \
    && curl -fLsS -o /usr/bin/dumb-init https://github.com/Yelp/dumb-init/releases/download/v1.1.3/dumb-init_1.1.3_amd64 \
    && chmod +x /usr/bin/dumb-init \
    && mkdir $HOME/.ssh /pysource \
    && ssh-keyscan -t rsa gitlab.com >> $HOME/.ssh/known_hosts \
    && mv /tmp/.ssh/* $HOME/.ssh/ \
    && chmod -R 600 $HOME/.ssh \
    && pip install virtualenv \
    && rm -rf /var/cache/apk/* \
    && git clone --depth 1 --single-branch --branch master git@gitlab:igniter-tech/genies-store-api.git /pysource \
    && virtualenv /pysource/venv \
    && /pysource/venv/bin/pip install -r /pysource/requirements.txt

WORKDIR /pysource

EXPOSE 5000

ENV EVE_SETTINGS /pysource/prod_settings.py

ENTRYPOINT ["/usr/bin/dumb-init", "--"]

CMD ["venv/bin/python", "run.py"]