if (-not ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) {
  Write-Error "This script requires elevated permissions. Please run as Administrator."
  exit 1
}

$RepoLocation = $PSScriptRoot

.\setup\powershell\Link-ConfigFiles.ps1 $RepoLocation
