param([string]$PetsRoot = (Join-Path $env:USERPROFILE '.codex\pets'))
$ErrorActionPreference = 'Stop'
$resolvedRoot = [IO.Path]::GetFullPath($PetsRoot)
$target = Join-Path $resolvedRoot 'nte-mint'
foreach ($sourceName in @('pet.json', 'nte-mint-spritesheet.webp')) {
    if (-not (Test-Path -LiteralPath (Join-Path $PSScriptRoot $sourceName))) {
        throw "Missing release file: $sourceName"
    }
}
if (Test-Path -LiteralPath $target) {
    $backup = "$target.backup-$(Get-Date -Format 'yyyyMMdd-HHmmss-fff')"
    Copy-Item -LiteralPath $target -Destination $backup -Recurse
    Write-Host "Existing installation backed up to: $backup"
}
New-Item -ItemType Directory -Path $target -Force | Out-Null
foreach ($sourceName in @('pet.json', 'nte-mint-spritesheet.webp')) {
    Copy-Item -LiteralPath (Join-Path $PSScriptRoot $sourceName) -Destination (Join-Path $target $sourceName) -Force
}
Write-Host 'Installed: NTE Mint'
Write-Host 'Open the Codex pet picker to choose Mint.'
