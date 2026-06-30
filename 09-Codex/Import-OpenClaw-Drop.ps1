param(
    [string]$SourceRoot = "D:\DockerApps\openclaw-data\AI-Workspace",
    [string]$DestinationRoot = "D:\AI-Workspace",
    [switch]$NoRedact
)

$ErrorActionPreference = "Stop"

if (-not (Test-Path -LiteralPath $SourceRoot)) {
    throw "Source root not found: $SourceRoot"
}

$relativeFolders = @("00-Inbox", "08-Pending", "08-OpenClaw\Workspace", "08-OpenClaw\Exports")

foreach ($folder in $relativeFolders) {
    $sourceFolder = Join-Path $SourceRoot $folder
    if (-not (Test-Path -LiteralPath $sourceFolder)) {
        continue
    }

    Get-ChildItem -LiteralPath $sourceFolder -File -Recurse | ForEach-Object {
        $relativePath = $_.FullName.Substring($SourceRoot.Length).TrimStart("\")
        $targetPath = Join-Path $DestinationRoot $relativePath
        $targetFolder = Split-Path -Parent $targetPath

        if (-not (Test-Path -LiteralPath $targetFolder)) {
            New-Item -ItemType Directory -Path $targetFolder | Out-Null
        }

        if ($_.Extension -eq ".md" -and -not $NoRedact) {
            $content = Get-Content -LiteralPath $_.FullName -Raw -Encoding UTF8
            $content = $content -replace "ou_[A-Za-z0-9]+", "[redacted-feishu-open-id]"
            $content = $content -replace "om_[A-Za-z0-9]+", "[redacted-feishu-message-id]"
            Set-Content -LiteralPath $targetPath -Value $content -Encoding UTF8
        }
        else {
            Copy-Item -LiteralPath $_.FullName -Destination $targetPath -Force
        }
    }
}

Write-Host "Imported OpenClaw drop from $SourceRoot to $DestinationRoot"
Write-Host "Markdown files were redacted unless -NoRedact was used."
