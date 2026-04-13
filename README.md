# AxeSim (Release)

## License (READ THIS FIRST)

This repository is source-available under the **Business Source License 1.1
(BSL 1.1)**. It is **NOT** an open source repository.

- No resale / no redistributed packages or release bundles without a commercial
  license: [COMMERCIAL_LICENSE.md](COMMERCIAL_LICENSE.md)
- No public forks, mirrors, or derivative redistributions without explicit
  written permission: [NO_FORK_POLICY.md](NO_FORK_POLICY.md)
- License: [LICENSE](LICENSE)
- Branding: [TRADEMARK.md](TRADEMARK.md)

AxeSim is a virtual miner simulator with an AxeLive-style dashboard UI.

This repo contains release binaries and container packaging.

## Downloads

Direct downloads (latest):
- Windows: https://github.com/WillItMod/AxeSim-Release/raw/main/windows/AxeSim_v1.0.9.exe
- Linux (amd64): https://github.com/WillItMod/AxeSim-Release/raw/main/linux/AxeSim_V1.0.9.bin
- Linux (arm64): https://github.com/WillItMod/AxeSim-Release/raw/main/linux/AxeSim_V1.0.9_arm64.bin

## Docker (LAN / Umbrel)

The GHCR image runs the compiled `AxeSim` linux binary.

- UI port: `8081`
- Optional per-miner ports: `8091-8100` (Bitaxe-style `/api/system/*`, one port per virtual miner)
- Data dir: `/data` (mounted)
