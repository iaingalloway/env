# My dotfiles

## Bash

```bash
mkdir -p repos
git clone git@github.com:iaingalloway/env.git repos/env
bash repos/env/setup-env.sh
```

## Powershell (needs an elevated prompt or Developer Mode)

```powershell
New-Item -Type Directory source\repos -Force
git clone https://github.com/iaingalloway/env.git source/repos/env
.\source\repos\env\Setup-Env.ps1
```
