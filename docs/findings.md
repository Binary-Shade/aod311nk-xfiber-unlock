# Research findings

Research date: 2026-11-02 IST

## Executive finding

There are people claiming or commercially offering unlocked AOD311NK devices, and
there is an exact-model APN-control utility for older firmware. That establishes
that at least some AOD311NK software variants expose authenticated APN controls.
It does **not** prove that the observed R7.0 unit can register on Jio or that the
same API remains available.

No source found met Grade A for: exact AOD311NK, firmware R7.0, Jio SIM, documented
APN, successful registration, band/status evidence, and reproducible procedure.

A subsequently supplied timestamped video transcript provides a coherent narrated
workflow in which an Airtel Nokia ODU is connected on VLAN 1999, enrolled with a
custom TR-369/MQTT controller, adjusted for GRE/VLAN/LAN behavior, fitted with a
physical Jio SIM, and shown receiving Jio IPv4/IPv6. This raises the historical
success claim to B-/C+ evidence, but the transcript does not state AOD311NK or the
firmware version; those values may only have appeared visually in the unavailable
video. It therefore does not resolve R7.0 compatibility.

## Exact-model leads

### Binary-only APN utility — Grade B-/C+

`thelivingduck/apnctl-pleasebenice` claims to log into the AOD311NK web UI and
read/write APN instance 1. It identifies AOD311NK (5G32-A), firmware
`AOD311NK_R_1.0`, web build `2402.20.06.A17`, and says changes persist across
reboot but reset on factory default.

Why this matters: it is an exact-model assertion with a concrete firmware/build
and defined operations. Why it is not proof for this experiment: it has one commit,
one star, no source code, opaque executables, no captured API transactions, no Jio
test, and firmware differs materially from R7.0/build `202601.25.03.A19 2`.

Decision: do not download or execute the binaries. Use a sanitized HAR from the
owner's authenticated browser to identify current read-only APIs independently.

### Commercially sold unlocked units — Grade C

BIGBEST advertises renewed AOD311NK units as unlocked/all-SIM and specifies VLAN
1999. A verified purchaser reported approximately 30 Mbps while a phone on the
same network/location achieved 150+ Mbps. The review shows a unit carried data,
but does not name the carrier/SIM, firmware, APN, radio band, or modification.

This corroborates that modified/repurposed units may work. It is not a reproducible
Jio success and the listing contains inconsistent generic specifications.

### Reddit reports — Grade D/C-

An AOD311NK-specific thread contains board photographs and Qualcomm-related board
observations, but no completed unlock. A related discussion has users claiming
they unlocked Airtel Nokia ODUs and used Jio with an observed 40 Mbps cap; exact
model, firmware, method, and raw status evidence are absent.

Treat these as leads for questions to ask, not instructions or proof.

### Paid IMEI unlock sites — Rejected

Generic phone-unlock storefronts generate AOD311NK pages and describe dialing
`*#06#` and entering a handset unlock code. This workflow does not fit a headless
outdoor CPE and no Airtel AOD311NK result is demonstrated. Do not submit IMEI or
payment based on these pages.

## TR-369 claim

The `abhigyan17/Airfiber_Unlock` Nokia FastMile document describes running an
Oktopus controller, creating controller credentials, placing it on the same subnet,
and configuring the device to connect. That is a management-controller migration
workflow. It does not demonstrate an unauthenticated exploit, does not specify
AOD311NK R7.0, and requires state changes not justified before backup/recovery.

## Hardware and radio compatibility

Jio officially uses NR n28, n78, and n258. Generic Nokia FastMile documentation
shows some receiver variants support n28 and n78, but regional hardware differs.
No authoritative AOD311NK India band table was found.

Local DNS reverse identity `mobileap.qualcomm.com` and `dnsmasq 2.81` support a
Qualcomm MobileAP software lineage. This does not identify the exact modem or prove
SA n28/n78 support. Only authenticated cellular status, module markings, or modem
commands from an authorized test interface can settle that question.

## Local evidence summary (redacted)

- Indoor router routes management traffic to ODU `192.168.0.1`.
- HTTPS web UI: WebUI 1.1.0; code `202601.25.03.A19 2`; firmware reported as R7.0.
- TCP/443 and TCP+UDP/53 observed open; `dnsmasq 2.81`; DNS recursion refused.
- SSH, Telnet, HTTP, CWMP/7547 and selected alternate web ports filtered.
- WAN service displays Airtel APN `airtelfwamdu.com` and `TR069,INTERNET`.
- No APN write, SIM swap, Jio registration, exploit, shell, or firmware change has
  been performed.

## Bottom line

Success is plausible but unproven for R7.0. The next defensible milestone is not
"unlock": it is exact-model API and radio characterization with a sanitized HAR,
cellular-status capture, exact module/band evidence, and a verified recovery plan.
