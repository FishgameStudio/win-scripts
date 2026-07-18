# Several git commands.
Import-Module "$PSScriptRoot/files.ps1"


# Aliases for typo
Set-Alias gut git.exe
Set-Alias got git.exe
Set-Alias fur git.exe
Set-Alias hoy git.exe

# Functions make more clean.

# Disable pagers to avoid errors when using pagers
function Start-GitWithNoPager {
    git --no-pager $args
}

Set-Alias gnp Start-GitWithNoPager

##### GIT INIT #####

function Initialize-GitRepo {
    gnp init -b main
}
function Initialize-GitRepoWith {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)]
        [string]$TemplatePath
    )
    gnp init -b main --template=$TemplatePath
}

function Test-IsGitRepo {
    return Test-Directory ".git"
}

##### GIT BRANCH #####

function Get-CurrentBranch {
    $res = gnp rev-parse --abbrev-ref HEAD
    return $res
}

function New-Branch {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)]
        [string]$Name
    )
    gnp branch $Name
}

function Set-CurrentBranch {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)]
        [string]$Branch
    )
    gnp switch $Branch
}

function Remove-Branch {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)]
        [string]$Branch
    )
    gnp branch -d $Branch
}

function Get-AllBranches {
    $res = gnp branch
    return $res
}

function Test-UpToDate {
    $res = gnp status | Select-String "Your branch is up to date with"
    return [string]::IsNullOrEmpty($res)
}

##### GIT COMMIT #####

function New-Commit {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)]
        [string]$Message
    )
    gnp commit -m "$Message"
}
function New-AmendedCommit {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)]
        [string]$Message
    )
    gnp commit -m "$Message" --amend
}
function Get-AllCommits {
    $res = gnp log
    return $res
}

##### GIT ADD #####
function Add-File {
    gnp add @args
}

##### GIT STATUS #####
function Write-GitStatus {
    # Only output:
    # - Current branch
    # - Is up to date
    # - Status of files
    $currBranch = Get-CurrentBranch
    $isUpToDate = Test-UpToDate
    $uptodatePrompt = $isUpToDate ? "(up to date with remote)" : "(not up to date with remote)"
    Write-Output "Current Branch: $currBranch $uptodatePrompt"
    Write-Output "File status: "
    git status --porcelain
}

##### GIT MERGE #####

function Merge-Branch {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)]
        [string]$Branch
    )
    gnp merge $Branch
}
function Merge-BranchNoFF {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)]
        [string]$Branch,
        [string]$Message = ""

    )
    if ([string]::IsNullOrWhiteSpace($Message)) {
        gnp merge $Branch --no-ff
    } else {
        gnp merge $Branch --no-ff -m "$Message"
    }
}

##### GIT PUSH / PULL #####

function Push-Branch {
    [CmdletBinding()]
    param(
        [string]$Branch,
        [string]$Remote
    )
    # git push
    $flag1 = [string]::IsNullOrEmpty($Branch)
    $flag2 = [string]::IsNullOrEmpty($Remote)
    if ($flag1 -and $flag2) {
        gnp push
        return
    }
    if ($flag1) {
        $Branch = Get-CurrentBranch
    }
    if ($flag2) {
        $Remote = "origin"
    }
    gnp push $Remote $Branch
}
function Receive-Pull {
    gnp fetch
    gnp pull
}

##### GIT DIFF #####
function Get-Difference {
    [CmdletBinding()]
    param(
        [string]$Old,
        [string]$New
    )
    gnp diff $Old $New
}

##### MISC #####
function Revoke-Added {
    # Revoke all added files.
    gnp reset
    Write-Output "All added files have been revoked"
}
function Initialize-Remote {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)]
        [string]$URL
    )
    gnp remote add origin $URL
}

##### ALIASES #####

Set-Alias ginit Initialize-GitRepo
Set-Alias ginitWith Initialize-GitRepoWith
Set-Alias isGitRepo Test-IsGitRepo
Set-Alias currBranch Get-CurrentBranch
Set-Alias switchBranch Set-CurrentBranch  
Set-Alias delBranch Remove-Branch
Set-Alias allBranches Get-AllBranches
Set-Alias isuptodate Test-UpToDate
Set-Alias ci New-Commit
Set-Alias ciamend New-AmendedCommit
Set-Alias log Get-AllCommits
Set-Alias gstat Write-GitStatus
Set-Alias merge Merge-Branch
Set-Alias mergeNoff Merge-BranchNoFF
Set-Alias push Push-Branch
Set-Alias pull Receive-Pull
Set-Alias gdiff Get-Difference
Set-Alias ga Add-File
Set-Alias rkadded Revoke-Added
Set-Alias initRemote Initialize-Remote
