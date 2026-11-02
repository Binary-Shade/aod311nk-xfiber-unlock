param(
    [string]$Target = "192.168.0.1",
    [string]$OutputDirectory = ".\evidence\private\readonly"
)

$ErrorActionPreference = "Continue"
$resolvedOutput = [System.IO.Path]::GetFullPath($OutputDirectory)
New-Item -ItemType Directory -Path $resolvedOutput -Force | Out-Null

$timestamp = Get-Date -Format "yyyyMMdd-HHmmss"
$reportPath = Join-Path $resolvedOutput "$timestamp-network.txt"

"Collection time: $(Get-Date -Format o)" | Out-File $reportPath -Encoding utf8
"Target: $Target" | Out-File $reportPath -Append -Encoding utf8
"Read-only collection: no authentication or configuration writes" | Out-File $reportPath -Append -Encoding utf8

ping -n 4 $Target | Out-File $reportPath -Append -Encoding utf8
tracert -d $Target | Out-File $reportPath -Append -Encoding utf8
arp -a | Out-File $reportPath -Append -Encoding utf8
nmap -Pn -sT --reason -p 53,80,443,7547,8080,8443 $Target |
    Out-File $reportPath -Append -Encoding utf8
nmap -Pn -sT -sV --version-light -p 53,443 --host-timeout 30s $Target |
    Out-File $reportPath -Append -Encoding utf8
nslookup example.com $Target | Out-File $reportPath -Append -Encoding utf8

Get-FileHash -Algorithm SHA256 -LiteralPath $reportPath |
    Format-List | Out-File "$reportPath.sha256.txt" -Encoding utf8

Write-Output "Saved $reportPath and SHA-256 record. Review and redact before sharing."
