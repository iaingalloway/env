$PowerShellProfileLocation = Join-Path $env:USERPROFILE "Documents\PowerShell"
New-Item -ItemType Directory -Path $PowerShellProfileLocation -Force | Out-Null
New-Item -ItemType SymbolicLink -Path (Join-Path $PowerShellProfileLocation "Microsoft.PowerShell_profile.ps1") -Target (Join-Path $PSScriptRoot "config\powershell\powershell-profile.ps1") -Force | Out-Null

$ConfigLocation = Join-Path $env:USERPROFILE ".config"
New-Item -ItemType Directory -Path $ConfigLocation -Force | Out-Null
New-Item -ItemType SymbolicLink -Path (Join-Path $ConfigLocation "starship.toml") -Target (Join-Path $PSScriptRoot "\config\starship.toml") -Force | Out-Null

$GitConfigLocation = Join-Path $ConfigLocation "git"
New-Item -ItemType Directory -Path $GitConfigLocation -Force | Out-Null
New-Item -ItemType SymbolicLink -Path (Join-Path $GitConfigLocation "config") -Target (Join-Path $PSScriptRoot "\config\git\config") -Force | Out-Null

$WindowsTerminalSettingsLocation = Join-Path $env:LOCALAPPDATA "Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState"
New-Item -ItemType Directory -Path $WindowsTerminalSettingsLocation -Force | Out-Null
New-Item -ItemType SymbolicLink -Path (Join-Path $WindowsTerminalSettingsLocation "settings.json") -Target (Join-Path $PSScriptRoot "config\windows-terminal\settings.json") -Force | Out-Null
