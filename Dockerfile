FROM docker.io/grafana/grafana:4.2.0

ENV USERNAME=grafana

COPY ./root /

RUN chmod +x /usr/bin/fix-permissions && \
    /usr/bin/fix-permissions /var/lib/grafana && \
    /usr/bin/fix-permissions /var/lib/grafana-plugins && \
    /usr/bin/fix-permissions /var/log/grafana && \
    /usr/bin/fix-permissions /etc/grafana
