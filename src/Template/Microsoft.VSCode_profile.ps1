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
    $currBranch = Get-CurrentBranch
    $isUpToDate = Test-UpToDate
    $uptodatePrompt = $isUpToDate ? "(up to date with remote)" : "(not up to date with remote)"
    Write-Output "Current Branch: $currBranch $uptodatePrompt"
    $res = git status --porcelain
    if ([string]::IsNullOrWhiteSpace($res)) {
        Write-Host "Nothing to commit, working tree clean"
    } else {
        Write-Host "File status: "
        [string[]]$list = $res
        foreach ($line in $list) {
            $line = $line.Trim()
            if ($line.StartsWith("M")) {
                Write-Host $line -ForegroundColor Yellow
            } elseif ($line.StartsWith("A")) {
                Write-Host $line -ForegroundColor DarkGreen
            } elseif ($line.StartsWith("D")) {
                Write-Host $line -ForegroundColor DarkRed
            } elseif ($line.StartsWith("R")) {
                Write-Host $line -ForegroundColor Green
            } elseif ($line.StartsWith("C")) {
                Write-Host $line -ForegroundColor Green
            } elseif ($line.StartsWith("M")) {
                Write-Host $line -ForegroundColor Yellow
            } elseif ($line.StartsWith("UU")) {
                Write-Host $line -ForegroundColor Red
            } elseif ($line.StartsWith("U")) {
                Write-Host $line -ForegroundColor Green
            } else {
                Write-Host $line -ForegroundColor White
            }
        }
    }
}

Write-GitStatus