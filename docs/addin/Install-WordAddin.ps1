<#
.SYNOPSIS
    Installs the Arabic Honorifics task pane into Word on Windows.

.DESCRIPTION
    Word will only sideload a web add-in from a *shared* folder that is
    registered as a trusted catalogue. Doing that by hand means sharing a
    folder and walking through the Trust Center; this does both.

    Exactly what it changes, so you can check before running it:

      1. Creates a folder (default C:\WordAddins) and puts manifest.xml in it.
      2. Shares that folder read-only to your own account. Needs administrator
         rights -- that is what the elevation prompt is for.
      3. Adds the share as a trusted add-in catalogue under
         HKCU\Software\Microsoft\Office\16.0\WEF\TrustedCatalogs.

    Step 3 is a Trust Center setting. It is the same change the Trust Center
    dialog makes; it is written here only because you chose to run this.

    Nothing is installed system-wide, no service is created, and -Uninstall
    reverses all three steps.

.PARAMETER Folder
    Where the manifest lives. Default C:\WordAddins.

.PARAMETER ShareName
    Name of the network share. Default WordAddins.

.PARAMETER ManifestPath
    Use a local manifest instead of downloading the current one.

.PARAMETER Uninstall
    Remove the catalogue entry, the share and the folder.

.EXAMPLE
    powershell -ExecutionPolicy Bypass -File .\Install-WordAddin.ps1

.EXAMPLE
    powershell -ExecutionPolicy Bypass -File .\Install-WordAddin.ps1 -Uninstall
#>

[CmdletBinding()]
param(
    [string]$Folder       = 'C:\WordAddins',
    [string]$ShareName    = 'WordAddins',
    [string]$ManifestPath,
    [switch]$Uninstall
)

$ErrorActionPreference = 'Stop'
$ManifestUrl  = 'https://eraduz.github.io/ArabicHonorificsComplete/addin/manifest.xml'
$ManifestFile = 'ArabicHonorifics-manifest.xml'
$CatalogRoot  = 'HKCU:\Software\Microsoft\Office\16.0\WEF\TrustedCatalogs'
# Fixed so a reinstall updates the same entry instead of adding a duplicate.
$CatalogId    = '{b7f4e2a1-9c3d-4e58-8a1f-6d2c5b9e0741}'

function Write-Step { param($n, $t) Write-Host "`n[$n] $t" -ForegroundColor Cyan }
function Write-Ok   { param($t) Write-Host "    $t" -ForegroundColor Green }
function Write-Note { param($t) Write-Host "    $t" -ForegroundColor DarkGray }

# --- elevate if needed -----------------------------------------------------
$identity  = [Security.Principal.WindowsIdentity]::GetCurrent()
$principal = New-Object Security.Principal.WindowsPrincipal($identity)
if (-not $principal.IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    Write-Host "Sharing a folder needs administrator rights - asking for them now." -ForegroundColor Yellow
    $argList = @('-NoProfile', '-ExecutionPolicy', 'Bypass', '-File', "`"$PSCommandPath`"",
                 '-Folder', "`"$Folder`"", '-ShareName', "`"$ShareName`"")
    if (-not $ManifestPath) {
        $sib = Join-Path (Split-Path -Parent $PSCommandPath) 'manifest.xml'
        if (Test-Path $sib) { $ManifestPath = $sib }
    }
    if ($ManifestPath) { $argList += @('-ManifestPath', "`"$ManifestPath`"") }
    if ($Uninstall)    { $argList += '-Uninstall' }
    Start-Process powershell -Verb RunAs -ArgumentList $argList
    return
}

$share = "\\$env:COMPUTERNAME\$ShareName"

# ---------------------------------------------------------------- uninstall
if ($Uninstall) {
    Write-Host "`nRemoving the Arabic Honorifics add-in" -ForegroundColor White

    Write-Step 1 'Trusted catalogue entry'
    $key = Join-Path $CatalogRoot $CatalogId
    if (Test-Path $key) { Remove-Item $key -Recurse -Force; Write-Ok 'removed' }
    else { Write-Note 'was not present' }

    Write-Step 2 'Network share'
    if (Get-SmbShare -Name $ShareName -ErrorAction SilentlyContinue) {
        Remove-SmbShare -Name $ShareName -Force
        Write-Ok "removed $share"
    } else { Write-Note 'was not present' }

    Write-Step 3 'Folder'
    if (Test-Path $Folder) {
        Remove-Item $Folder -Recurse -Force
        Write-Ok "removed $Folder"
    } else { Write-Note 'was not present' }

    Write-Host "`nDone. Restart Word." -ForegroundColor Green
    Write-Host "The font itself is untouched - uninstall that from Settings if you want it gone.`n" -ForegroundColor DarkGray
    Read-Host 'Press Enter to close'
    return
}

# ------------------------------------------------------------------ install
Write-Host "`nInstalling the Arabic Honorifics task pane for Word" -ForegroundColor White
Write-Note "computer $env:COMPUTERNAME, user $env:USERNAME"

Write-Step 1 "Folder and manifest"
if (-not (Test-Path $Folder)) { New-Item -ItemType Directory -Path $Folder | Out-Null }
$target = Join-Path $Folder $ManifestFile

# A manifest shipped alongside this script wins, so the zip installs offline.
if (-not $ManifestPath) {
    $sibling = Join-Path (Split-Path -Parent $PSCommandPath) 'manifest.xml'
    if (Test-Path $sibling) { $ManifestPath = $sibling }
}

if ($ManifestPath) {
    Copy-Item -LiteralPath $ManifestPath -Destination $target -Force
    Write-Ok "copied from $ManifestPath"
} else {
    try {
        Invoke-WebRequest -Uri $ManifestUrl -OutFile $target -UseBasicParsing
        Write-Ok "downloaded the current manifest"
    } catch {
        throw "Could not download the manifest ($ManifestUrl). Check your connection, or pass -ManifestPath with a local copy."
    }
}
# a truncated or HTML error page would install silently and fail later in Word
[xml]$check = Get-Content $target -Raw
if ($check.DocumentElement.LocalName -ne 'OfficeApp') {
    throw "The file at $target is not an Office add-in manifest."
}
Write-Ok "$target  ($([math]::Round((Get-Item $target).Length / 1KB)) KB, valid manifest)"

Write-Step 2 "Share the folder as $share"
$existing = Get-SmbShare -Name $ShareName -ErrorAction SilentlyContinue
if ($existing) {
    if ($existing.Path -ne $Folder) {
        throw "A share called '$ShareName' already points at $($existing.Path). Re-run with -ShareName something-else."
    }
    Write-Note 'share already existed, reusing it'
} else {
    New-SmbShare -Name $ShareName -Path $Folder -ReadAccess "$env:USERDOMAIN\$env:USERNAME" | Out-Null
    Write-Ok "created, read-only for $env:USERNAME"
}
if (-not (Test-Path "$share\$ManifestFile")) {
    throw "The share exists but $share\$ManifestFile is not reachable. Check that File and Printer Sharing is enabled."
}
Write-Ok 'share is reachable'

Write-Step 3 'Register it as a trusted add-in catalogue'
if (-not (Test-Path $CatalogRoot)) { New-Item -Path $CatalogRoot -Force | Out-Null }
$key = Join-Path $CatalogRoot $CatalogId
if (-not (Test-Path $key)) { New-Item -Path $key -Force | Out-Null }
New-ItemProperty -Path $key -Name 'Id'    -Value $CatalogId -PropertyType String -Force | Out-Null
New-ItemProperty -Path $key -Name 'Url'   -Value $share     -PropertyType String -Force | Out-Null
# Flags 1 = enabled and listed in the Insert menu
New-ItemProperty -Path $key -Name 'Flags' -Value 1          -PropertyType DWord  -Force | Out-Null
Write-Ok 'registered, and set to show in the Insert menu'

Write-Host "`nInstalled." -ForegroundColor Green
Write-Host @"

Next, in Word:

  1. Close Word completely and open it again.
  2. Insert  ->  My Add-ins  ->  SHARED FOLDER tab
  3. Pick "Arabic Honorifics" and click Add.

The Honorifics button then sits on the Home tab.

The font has to be installed separately, or the glyphs will not draw:
  https://github.com/eraduz/ArabicHonorificsComplete/releases/latest

To undo everything this did:
  powershell -ExecutionPolicy Bypass -File "$PSCommandPath" -Uninstall

"@ -ForegroundColor Gray
Read-Host 'Press Enter to close'
