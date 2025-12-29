# AxeSim (Release)

AxeSim is a virtual miner simulator with an AxeLive-style dashboard UI.

This repo contains release binaries and container packaging.

## Downloads

Direct downloads (latest):
- Windows: https://github.com/WillItMod/AxeSim-Release/raw/main/windows/AxeSim_v1.0.8.exe
- Linux (amd64): https://github.com/WillItMod/AxeSim-Release/raw/main/linux/AxeSim_V1.0.8.bin
- Linux (arm64): https://github.com/WillItMod/AxeSim-Release/raw/main/linux/AxeSim_V1.0.8_arm64.bin

## Docker (LAN / Umbrel)

The GHCR image runs the compiled `AxeSim` linux binary.

- UI port: `8081`
- Optional per-miner ports: `8091-8100` (Bitaxe-style `/api/system/*`, one port per virtual miner)
- Data dir: `/data` (mounted)
