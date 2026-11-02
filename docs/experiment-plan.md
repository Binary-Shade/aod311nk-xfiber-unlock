# Controlled experiment plan

Every stage has a stop condition. Do not advance merely because a prior stage ran.

## Stage 0 — authorization and identity

- Confirm written ownership/permission for the spare.
- Isolate it from the active service.
- Match label model/serial/MAC to the authenticated Overview page.
- Photograph cabling, power supply rating, label, seals, and initial LED state.

Stop if the unit may be ISP property or its identity is ambiguous.

## Stage 1 — read-only baseline

- Run `scripts/collect-readonly.ps1`.
- Capture every UI page before changes.
- Export a HAR while viewing Overview, Cellular Status, WAN Services, GRE, and
  Diagnostics. Do not operate Apply/Save/Reset/Upgrade controls.
- Record firmware, web build, uptime, modem/module, RAT, PLMN, bands, EARFCN or
  NR-ARFCN, PCI, RSRP, RSRQ, SINR, SIM state, registration, and cause codes.
- Hash all artifacts and redact secrets in a copy; never edit originals.

## Stage 2 — recovery readiness

- Locate official configuration backup/export and document restore procedure.
- Determine whether dual-image/rollback exists for this exact model.
- Verify factory reset behavior on the spare only if ownership permits and the
  original configuration can be restored without ISP intervention.
- Do not flash firmware from Jio or another Nokia model.

Stop unless a tested recovery path exists.

## Stage 3 — authenticated API characterization

- Derive endpoints from the owner's HAR and loaded JavaScript.
- Replay only GET/read operations first.
- Document authentication, CSRF, schema, instance IDs, and response fields.
- Compare with the older apnctl claims, but do not execute its opaque binaries.

Any write request requires a separate reviewed procedure and exact rollback.

## Stage 4 — reversible APN experiment

Only after Stages 0-3:

- Save the complete original APN/service record.
- Change only the APN on the spare through a documented authenticated interface.
- Do not alter IMEI, PLMN identity, ACS/controller, firmware, bands, or RF power.
- Record request/response, state transitions, logs, and restoration outcome.

## Stage 5 — Jio SIM registration test

- Use a legitimately provisioned SIM and comply with its plan/device terms.
- Power down before SIM handling.
- Capture SIM detection and network registration before attempting data traffic.
- If rejected, capture the standardized cause code; do not brute-force settings.
- If registered, record band/mode, assigned IP, DNS, latency, throughput, and
  stability; then power-cycle and confirm rollback to the original configuration.

## Result template

- Test ID / date / operator
- Device model / hardware / firmware / web build (identifiers redacted)
- Exact change and interface used
- Pre-test and post-test hashes
- SIM detected / PLMN / registration / reject cause
- RAT / bands / channel / PCI / signal metrics
- IP/DNS / ping / throughput
- Reboot persistence
- Rollback result
- Artifact filenames
- Conclusion and remaining uncertainty
