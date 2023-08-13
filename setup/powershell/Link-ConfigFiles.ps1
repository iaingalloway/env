param(
  [Parameter(Mandatory=$true)]
  [string]$RepoLocation
)

$PowerShellProfileLocation = Join-Path $env:USERPROFILE "Documents\PowerShell"
New-Item -ItemType Directory -Path $PowerShellProfileLocation -Force | Out-Null
New-Item -ItemType SymbolicLink -Path (Join-Path $PowerShellProfileLocation "Microsoft.PowerShell_profile.ps1") -Target (Join-Path $RepoLocation "config\powershell\powershell-profile.ps1") -Force | Out-Null

$ConfigLocation = Join-Path $env:USERPROFILE ".config"
New-Item -ItemType Directory -Path $ConfigLocation -Force | Out-Null
New-Item -ItemType SymbolicLink -Path (Join-Path $ConfigLocation "starship.toml") -Target (Join-Path $RepoLocation "\config\starship\starship.toml") -Force | Out-Null

New-Item -ItemType SymbolicLink -Path (Join-Path $env:USERPROFILE ".gitconfig") -Target (Join-Path $RepoLocation "config\git\config") -Force | Out-Null

$GitConfigLocation = Join-Path $ConfigLocation "git"
New-Item -ItemType Directory -Path $GitConfigLocation -Force | Out-Null
New-Item -ItemType SymbolicLink -Path (Join-Path $GitConfigLocation "menzies") -Target (Join-Path $RepoLocation "\config\git\menzies") -Force | Out-Null

$WindowsTerminalSettingsLocation = Join-Path $env:LOCALAPPDATA "Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState"
New-Item -ItemType Directory -Path $WindowsTerminalSettingsLocation -Force | Out-Null
New-Item -ItemType SymbolicLink -Path (Join-Path $WindowsTerminalSettingsLocation "settings.json") -Target (Join-Path $RepoLocation "config\windows-terminal\settings.json") -Force | Out-Null
