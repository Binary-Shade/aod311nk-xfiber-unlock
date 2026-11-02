# User-supplied video claim analysis

Recorded: 2026-11-02 IST

## Provenance

The user supplied a third-party summary of a YouTube video describing an Airtel
Nokia ODU unlock through TR-369/MQTT controller replacement. The original video
URL was not supplied. Search located a matching public trail in a LinkedIn post by
Suraj Saini, which links to a now-unavailable Hacksmith Tech Zone YouTube video and
claims restricted Nokia ODU firmware was bypassed for approximately 1 Gbps.

Because the original frames, audio, description, upload date, device label, firmware
screen, and packet captures cannot currently be inspected, the summary is preserved
as secondary evidence rather than treated as a verified transcript.

## Claims extracted separately

| Claim | Evidence needed from original video | Current status |
|---|---|---|
| Physical Jio SIM registered and carried data | Label/model, SIM/operator status, PLMN, assigned IP and traffic test in one continuous sequence | Claimed, not verified |
| Device is AOD311NK | Physical label and Overview screen | Not established by summary |
| Applicable firmware matches R7.0 | Firmware and web-build screens | Not established |
| VLAN 1999 is required | Packet capture or host interface configuration plus successful data plane | Plausible; commercially corroborated, not locally reproduced |
| TR-369 uses MQTT | Packet capture and USP endpoint/MTP parameters | Plausible and standards-consistent |
| TR-369/MQTT has no authentication | Broker connection, TLS/client-auth state, USP controller trust and packet evidence | High-impact claim; unverified |
| Custom controller can manage the ODU | Controller logs plus device-side controller config and command results | Demonstrated only if original artifacts exist |
| GRE tunnel was disabled | Before/after parameter value and traffic behavior | Claimed, not verified |
| N78 band locking works | Parameter/API operation plus post-change serving-band state | Claimed, not verified |
| SSH exists but is disabled | Service/process configuration or post-enable port evidence | Claimed, not verified |
| Factory reset restores Airtel config/eSIM | Continuous reset/reprovision trace and controller traffic | Claimed; risky to reproduce |
| USB-C exposes no ADB/fastboot | USB enumeration throughout complete boot | Negative claim; not conclusive |

## Important contradiction and version boundary

The summary says both that a physical Jio SIM worked and that factory reset restores
an Airtel eSIM profile. These can coexist if the modem supports both or if the video
switches configurations, but the sequence must be verified from the original.

The matching LinkedIn discussion includes a later report that newer ODU firmware no
longer exposes the TR-369 interface. This is consistent with the present R7.0 UI,
where no TR-369 menu has been observed, and with TCP/7547 being filtered (although
7547 is CWMP/TR-069 and does not test MQTT-based USP by itself).

## Security interpretation correction

"No authentication" must not be inferred merely because an ODU connects to a local
MQTT broker. TR-369 separates MTP security, USP controller trust, endpoint identity,
and authorization. A valid finding needs evidence of broker/TLS configuration and
whether an unauthorized controller can issue accepted USP operations.

Similarly, redirecting a device to an operator lookalike controller is a state change,
not passive interception. It should only be tested on an authorized spare with an
exported original configuration and a proven rollback route.

## Evidence grade

- Historical existence of an Airtel Nokia ODU modification video: **C+**, supported
  by the matching LinkedIn post and collaborator acknowledgement.
- Exact AOD311NK success: **D/C-** until the device label/UI is visible.
- Exact AOD311NK R7.0 success: **not established**.
- Physical Jio SIM data success: **C- claim** pending original video inspection.
- Unauthenticated TR-369 vulnerability: **unverified security claim**.

## What would raise the grade

Provide the original YouTube URL or video file. Required timestamps should show:

1. physical label and firmware/build;
2. original TR-369 controller/MQTT configuration;
3. exact changed parameters and controller responses;
4. Jio SIM status, PLMN, registration, band and IP assignment;
5. live traffic test;
6. persistence and rollback.

Private identifiers must be redacted before any artifact is committed.
