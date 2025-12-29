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
ARG AXESIM_TAG
ARG TARGETARCH
COPY linux/ /app/linux/
RUN set -euo pipefail; \
    case "${TARGETARCH:-amd64}" in \
      arm64) src="/app/linux/AxeSim_V${AXESIM_TAG}_arm64.bin" ;; \
      amd64) src="/app/linux/AxeSim_V${AXESIM_TAG}.bin" ;; \
      *) echo "Unsupported TARGETARCH=${TARGETARCH}" >&2; exit 1 ;; \
    esac; \
    test -f "$src"; \
    cp "$src" /app/axesim.bin; \
    chmod +x /app/axesim.bin; \
    chown -R 1000:1000 /app

EXPOSE 8081
EXPOSE 8801-8810
USER 1000:1000
CMD ["/app/axesim.bin"]
