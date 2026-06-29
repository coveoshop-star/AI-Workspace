param(
    [Parameter(Mandatory = $true)]
    [string]$ReviewPath
)

$ErrorActionPreference = "Stop"

$root = "D:\AI-Workspace"
$target = "$root\01-Projects\ChewyWell\SEO\Weekly-Review-UTF8.md"

if (-not (Test-Path -LiteralPath $ReviewPath)) {
    throw "Review file not found: $ReviewPath"
}

if (-not (Test-Path -LiteralPath $target)) {
    New-Item -ItemType File -Path $target -Force | Out-Null
}

$stamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
$text = Get-Content -LiteralPath $ReviewPath -Raw -Encoding UTF8

$entry = @"

---

<!-- Appended at $stamp from $ReviewPath -->

$text

"@

Add-Content -LiteralPath $target -Value $entry -Encoding UTF8

Write-Host "Updated: $target"
Write-Host "Done."
