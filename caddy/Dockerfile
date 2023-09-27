FROM caddy:2-alpine

USER root

RUN apk add gettext

RUN mkdir -p /templates/caddy

COPY Caddyfile.template /templates/caddy

COPY entrypoint.sh .

RUN chmod a+x entrypoint.sh

ENTRYPOINT [ "./entrypoint.sh" ]