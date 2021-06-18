FROM ghcr.io/num-codex/aktin-client-temp:1.3.0

USER root
COPY ./client-exec-scripts /opt/aktin
RUN chown -R 10001:10001 /opt/aktin
USER 10001
