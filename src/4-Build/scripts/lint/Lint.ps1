Set-Location -Path (Split-Path -Parent (Split-Path -Parent $PSScriptRoot))

Write-Host "Running: nuke Lint"
nuke Lint

if ($Host.Name -eq "ConsoleHost") {
    Write-Host "Press any key to continue..."
    $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyUp") > $null
} 