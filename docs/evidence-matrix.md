# Evidence matrix

| ID | Claim | Exact model | Exact R7.0 | Jio shown | Reproducible | Grade | Verdict |
|---|---|---:|---:|---:|---:|---|---|
| E01 | Older AOD311NK APN can be changed through authenticated web operations | Yes | No | No | Partial | B-/C+ | Strong API lead; binary unsafe |
| E02 | Retailer sells unlocked/all-SIM AOD311NK | Yes | Unknown | Unknown | No | C | Commercial corroboration |
| E03 | Verified buyer transferred data on retailer unit | Yes | Unknown | Unknown | No | C | Working data, carrier unknown |
| E04 | Reddit users used Airtel Nokia ODU with Jio, ~40 Mbps | Unclear | Unknown | Claimed | No | D/C- | Anecdotal, not model proof |
| E05 | AOD311NK board appears Qualcomm-based | Yes | N/A | No | Photos exist | C | Consistent with local MobileAP clue |
| E06 | TR-369 Oktopus yields device management | Nokia FastMile | No | No | Partial | C | State-changing, model unclear |
| E07 | Jio NR bands are n28/n78/n258 | N/A | N/A | Official | Yes | A | Authoritative network fact |
| E08 | Generic Nokia receiver variants support n28/n78 | Product family | No | N/A | Yes | B | Cannot infer exact variant |
| E09 | Local ODU serves HTTPS and dnsmasq 2.81 | Yes | Yes | No | Yes | A | Reproduced locally |
| E10 | Local ODU is SIM/carrier locked | Yes | Yes | No | No | — | Not established |
| E11 | Paid IMEI sites can unlock Airtel AOD311NK | Name only | No | No | No | Rejected | Generic SEO workflow |
| E12 | Timestamped video transcript claims physical Jio SIM and Jio IPv4/IPv6 through TR-369/MQTT changes | Unclear | No | Claimed in continuous narrative | Transcript available; video unavailable | B-/C+ claim | Strong historical success claim; exact model/build unverified |
| E13 | Public post claims Airtel Nokia ODU restriction bypass and ~1 Gbps | Unclear | No | Not specified | Video unavailable | C+ | Corroborates video existence, not R7.0 method |
| E14 | Newer firmware may lack exposed TR-369 interface | Nokia ODU | Possibly | N/A | Community report | C-/D | Consistent with observed R7.0 UI; needs API proof |

## What would count as proven Jio success

All of the following must be captured in one test record:

1. Label/UI proof of AOD311NK and firmware/build, with identifiers redacted.
2. Before/after configuration diff or authenticated API trace.
3. Jio SIM detected, with IMSI/ICCID redacted.
4. PLMN 405-84x or operator Jio and registration state shown.
5. NR/LTE band, SA/NSA mode, signal metrics, IP allocation, and a data test.
6. Power-cycle persistence result and recovery/rollback result.
7. Exact steps and cryptographic hashes of every tool/artifact used.
