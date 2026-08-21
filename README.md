# Kiwi Browser Next

This repository tracks the Kiwi Browser Next build metadata and upstream synchronization helpers.

## Current upstream status

Kiwi Browser is archived and its final published Kiwi Next release is **137.0.7337.0**. The Chromium baseline in this repository is therefore aligned to 137.0.7337.0 rather than claiming an unsupported Chromium 151 rebase.

Modern Microsoft Edge and Chrome releases are newer than Kiwi's final engine. The current Microsoft Edge Stable channel is 151.0.4129.93 (August 17, 2026). A true Kiwi-to-Edge/Chrome 151 update requires the full Kiwi/Chromium source tree; this repository does not contain that source tree, so version metadata alone cannot perform that rebase.

## Repository contents

- `CHROMIUM_VERSION` — Chromium baseline used by the tracked Kiwi build.
- `KIWI_VERSION` — Kiwi application version.
- `VERSION` — legacy Kiwi version metadata kept in sync.
- `fetch_from_upstream.sh` — reliable synchronization helper for the archived Kiwi upstream branch.

## Updating the full browser engine

Use the full `kiwibrowser/src.next` source tree for an actual Chromium/Edge engine rebase. Do not replace the version files with a newer browser number unless the corresponding Chromium source changes have also been integrated and compiled.

## Compatibility

The metadata is now internally consistent at Kiwi 137.0.7337.0. Extension code intended for modern Chromium-based browsers should continue to target current Chromium/Edge extension APIs separately from the archived Kiwi browser engine.

## License

This repository is licensed under the same license as Chromium. Keep Kiwi Browser attribution when modifying or redistributing the project.
