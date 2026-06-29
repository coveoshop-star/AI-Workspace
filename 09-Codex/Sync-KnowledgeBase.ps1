param(
    [string]$Message = "update knowledge base"
)

$ErrorActionPreference = "Stop"

$RepoRoot = "D:\AI-Workspace"
$Git = "C:\Program Files\Git\cmd\git.exe"

if (-not (Test-Path -LiteralPath $Git)) {
    throw "Git not found at $Git"
}

Set-Location -LiteralPath $RepoRoot

& $Git status --short

$hasChanges = (& $Git status --porcelain).Length -gt 0
if (-not $hasChanges) {
    Write-Host "No local changes to sync."
    exit 0
}

& $Git add -A
& $Git commit -m $Message
& $Git push

Write-Host "Knowledge base synced to GitHub."
