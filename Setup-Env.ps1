$ConfigLocation = Join-Path $env:USERPROFILE ".config"
New-Item -ItemType Directory -Path $ConfigLocation -Force | Out-Null
New-Item -ItemType SymbolicLink -Path (Join-Path $ConfigLocation "starship.toml") -Target (Join-Path $PSScriptRoot "starship.toml") -Force | Out-Null
