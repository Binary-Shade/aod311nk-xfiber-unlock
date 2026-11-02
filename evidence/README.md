# Evidence storage

Do not commit raw evidence containing identifiers or secrets.

Recommended local-only layout:

```text
evidence/private/<test-id>/original/
evidence/private/<test-id>/hashes.sha256
evidence/redacted/<test-id>/
```

Name artifacts with UTC/IST timestamp, test ID, source, and purpose. Record the
collection command and tool version. Hash originals immediately with
`Get-FileHash -Algorithm SHA256` and redact only copies.
