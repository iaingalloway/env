$ConfigDir = Join-Path $env:USERPROFILE ".config"

New-Item -ItemType Directory -Path $ConfigDir -Force | Out-Null
New-Item -ItemType SymbolicLink -Path (Join-Path $ConfigDir "starship.toml") -Target (Join-Path $PSScriptRoot "starship.toml") -Force | Out-Null
