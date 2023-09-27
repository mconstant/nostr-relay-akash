FROM scsibug/nostr-rs-relay:0.8.13

USER root

RUN apt update
RUN apt install gettext -y

RUN mkdir -p /templates/public-relay
RUN mkdir -p /home/.nostr-rs-relay

RUN chown -R $APP_USER:$APP_USER /home/.nostr-rs-relay

COPY config.toml.template /templates/public-relay

COPY entrypoint.sh .

RUN chmod a+x entrypoint.sh

USER $APP_USER

ENTRYPOINT [ "./entrypoint.sh" ]