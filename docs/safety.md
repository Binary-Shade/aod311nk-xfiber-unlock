# Safety, authorization, and privacy

- Use only personally owned equipment or equipment with explicit authorization.
- Never publish serial numbers, MAC addresses, IMEI, IMSI, ICCID, phone numbers,
  passwords, session cookies, CSRF tokens, client certificates, or precise location.
- Do not alter IMEI or other regulated network identity.
- Do not connect an unknown controller, firmware image, executable, or mobile app to
  the device or network.
- Treat opaque binaries as hostile until source, hashes, provenance, and behavior
  are independently verified.
- Keep original artifacts immutable. Work on redacted copies and retain hashes.
- Never cross-flash firmware based only on enclosure similarity or product family.
- Stop on overheating, boot loops, unexpected ACS/controller changes, loss of
  management access, or evidence that the active service unit is connected.
