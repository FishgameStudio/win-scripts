# This is a template profile of powershell.
# You can copy this file to: ~/Microsoft.VSCode_profile.ps1
# Enjoy!  :D


##### ENABLE UTF8 #####
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8
[Console]::InputEncoding  = [System.Text.Encoding]::UTF8
$OutputEncoding = [System.Text.Encoding]::UTF8
chcp 65001 | Out-Null
$PSDefaultParameterValues['Get-Content:Encoding'] = 'UTF8'

##### SIMPLE ALIASES #####
Set-Alias grep findstr

##### ENVIRONMENT VARIABLES #####
# Add some environment variables here if you have, like:
# $env:QT_ENABLE_HIGHDPI_SCALING = "1"

##### WELCOME #####
Write-Host "WELCOME BACK, " -ForegroundColor Yellow -NoNewline
Write-Host "YOURNAME" -ForegroundColor Blue -NoNewline
Write-Host "!" -ForegroundColor Yellow
Write-Host ""

##### GIT STATUS #####
function Write-GitStatus {
    [bool]$isUptodate = [string]::IsNullOrEmpty("$(git status | Select-String "Your branch is up to date with")")
    [string]$currBranch = git rev-parse --abbrev-ref HEAD
    Write-Host "Current Branch: $currBranch $($isUptodate ? '(up to date)' : '(not up to date)')" -ForegroundColor Yellow
    Write-Host "File status: "
    git status --porcelain
}
Write-GitStatus