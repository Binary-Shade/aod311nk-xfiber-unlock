# aod311nk-xfiber-unlock

Evidence-led research into whether an Airtel Nokia AOD311NK outdoor CPE can be
used with another Indian mobile network, especially Jio, without unsafe firmware
cross-flashing or identity modification.

## Current answer

As of 2026-11-02, public evidence suggests that APN changes and commercially
"unlocked" AOD311NK units exist. However, no public source found provides a
reproducible, independently verified Jio procedure for **AOD311NK R7.0**.

The best exact-model technical lead supports an older `AOD311NK_R_1.0` build and
is binary-only. Do not run it on R7.0. The public TR-369 guide is controller
reprovisioning, not a demonstrated AOD311NK R7.0 exploit.

## Repository map

- [Research findings](docs/findings.md)
- [Evidence matrix](docs/evidence-matrix.md)
- [Video claim analysis](docs/video-claim-analysis.md)
- [Source registry](docs/sources.csv)
- [Experiment plan](docs/experiment-plan.md)
- [Safety and privacy rules](docs/safety.md)
- `scripts/collect-readonly.ps1`: reproducible non-mutating network collection
- `evidence/README.md`: artifact naming and chain-of-custody guidance

## Evidence standard

Claims are graded:

- **A — reproduced:** raw artifacts from the exact test unit and repeatable steps.
- **B — direct:** exact-model evidence with artifacts, but not independently reproduced.
- **C — corroborating:** commercial or community evidence lacking full test details.
- **D — anecdotal:** unsupported statement or related-model inference.
- **Rejected:** misleading, contradictory, or unsafe as evidence.

## Non-goals

This repository does not alter IMEI, bypass subscription controls, attack an ISP,
publish credentials/device identifiers, or distribute unknown firmware/binaries.
Only use equipment you own or are explicitly authorized to modify.

## Status

Read-only discovery is complete. Authenticated UI/HAR collection, exact modem and
band identification, spare-unit identity, backup/recovery, and a controlled Jio
registration test remain outstanding.
