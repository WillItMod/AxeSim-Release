FROM debian:trixie-slim

ENV AXESIM_HOME=/data \
    AXESIM_HOST=0.0.0.0 \
    AXESIM_PORT=8081 \
    HOME=/data

RUN useradd -m -u 1000 appuser && mkdir -p /data && chown -R 1000:1000 /data

RUN apt-get update \
  && apt-get install -y --no-install-recommends ca-certificates \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /app
ARG BIN_PATH=linux/AxeSim_V1.0.bin
COPY ${BIN_PATH} /app/axesim.bin
RUN chmod +x /app/axesim.bin && chown -R 1000:1000 /app

EXPOSE 8081
USER 1000:1000
CMD ["/app/axesim.bin"]

