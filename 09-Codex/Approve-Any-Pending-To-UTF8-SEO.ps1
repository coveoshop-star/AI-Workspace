param(
    [Parameter(Mandatory = $true)]
    [string]$PendingPath,

    [string]$Title = "Pending SEO 审核入库"
)

$ErrorActionPreference = "Stop"

$root = "D:\AI-Workspace"
$audit = "$root\01-Projects\ChewyWell\SEO\SEO-Audit-UTF8.md"
$log = "$root\01-Projects\ChewyWell\SEO\Optimization-Log-UTF8.md"

if (-not (Test-Path -LiteralPath $PendingPath)) {
    throw "Pending file not found: $PendingPath"
}

if (-not (Test-Path -LiteralPath $audit)) {
    throw "UTF-8 audit file not found: $audit"
}

if (-not (Test-Path -LiteralPath $log)) {
    throw "UTF-8 optimization log not found: $log"
}

$stamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
$dateFolder = Get-Date -Format "yyyy-MM-dd"
$archiveDir = "$root\13-Archive\Pending-Approved\$dateFolder"
$pendingName = Split-Path -Leaf $PendingPath
$archive = Join-Path $archiveDir $pendingName
$pendingText = Get-Content -LiteralPath $PendingPath -Raw -Encoding UTF8

if (-not (Test-Path -LiteralPath $archiveDir)) {
    New-Item -ItemType Directory -Path $archiveDir -Force | Out-Null
}

$auditEntry = @"

---

### $stamp｜$Title

来源：`$PendingPath`
状态：人工审核通过后入库
优先级：需要人工确认

#### Pending 原文

```md
$pendingText
```

"@

$logEntry = @"

---

### $stamp｜$Title

来源：`$PendingPath`
动作：写入 UTF-8 SEO 审核文件
状态：完成

#### 结果

- 已追加到 `SEO-Audit-UTF8.md`
- 已追加到 `Optimization-Log-UTF8.md`
- 已复制归档到 `$archive`

#### 下一步

- 人工确认是否需要进入 WordPress 后台修改。

"@

Add-Content -LiteralPath $audit -Value $auditEntry -Encoding UTF8
Add-Content -LiteralPath $log -Value $logEntry -Encoding UTF8

if (Test-Path -LiteralPath $archive) {
    Write-Host "Skipped existing archive: $archive"
} else {
    Copy-Item -LiteralPath $PendingPath -Destination $archive
    Write-Host "Archived: $archive"
}

Write-Host "Updated: $audit"
Write-Host "Updated: $log"
Write-Host "Done."
