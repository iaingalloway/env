$ConfigLocation = Join-Path $env:USERPROFILE ".config"
New-Item -ItemType Directory -Path $ConfigLocation -Force | Out-Null
New-Item -ItemType SymbolicLink -Path (Join-Path $ConfigLocation "starship.toml") -Target (Join-Path $PSScriptRoot "starship.toml") -Force | Out-Null

$PowerShellProfileLocation = Join-Path $env:USERPROFILE "Documents\PowerShell"
New-Item -ItemType Directory -Path $PowerShellProfileLocation -Force | Out-Null
New-Item -ItemType SymbolicLink -Path (Join-Path $PowerShellProfileLocation "Microsoft.PowerShell_profile.ps1") -Target (Join-Path $PSScriptRoot "Microsoft.PowerShell_profile.ps1") -Force | Out-Null
