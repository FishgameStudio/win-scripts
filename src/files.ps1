# Utilities for file operations.


##### TESTS #####

function Test-Exists {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)]
        [string]$Path
    )
    return Test-Path $Path
}

function Test-File {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)]
        [string]$File
    )
    return Test-Path -Path $target -PathType Leaf
}

function Test-Directory {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)]
        [string]$Directory
    )
    return Test-Path $Path -PathType Container
}

function Test-SymbolicLink {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)]
        [string]$Path
    )
    return Test-Path $Path -ItemType SymbolicLink
}

function Test-HardLink {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)]
        [string]$File
    )
    return Test-Path $File -ItemType HardLink
}

##### NEW ITEMS #####

function New-File {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)]
        [string]$File
    )
    if (Test-Exists $File) {
        Write-Error "File $File already exists"
        return
    } else {
        New-Item $File -ItemType File
    }
}

function New-Directory {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)]
        [string]$Directory
    )
    if (Test-Exists $Directory) {
        Write-Error "Directory $Directory already exists"
    } else {
        New-Item $Directory -ItemType Directory
    }
}

function New-SymbolicLink {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)]
        [string]$Link
    )
    if (Test-Exists $Link) {
        Write-Error "Symbolic link $Link already exists"
    } else {
        New-Item $Link -ItemType SymbolicLink
    }
}

function New-HardLink {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)]
        [string]$Link
    )
    if (Test-Exists $Link) {
        Write-Error "Hard link $Link already exists"
    } else {
        New-Item $Link -ItemType HardLink
    }
}

##### DELETE ITEMS ######

function Remove-DirFull {
    # Remove a full directory.
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)]
        [string]$Directory
    )
    Remove-Item $Directory -Confirm -Force
}

##### LIST ITEMS #####

function Get-Files {
    [CmdletBinding()]
    param(
        [string]$Path = ".",
        [switch]$All
    )
    $gciOpt = @{
        Path  = $Path
        Force = $All.IsPresent
    }
    $items = Get-ChildItem @gciOpt

    [string[]]$dirList  = $items | Where-Object { $_.PSIsContainer -and !$_.LinkType } | Select-Object -ExpandProperty Name
    [string[]]$linkList = $items | Where-Object { $null -ne $_.LinkType }          | Select-Object -ExpandProperty Name
    [string[]]$fileList = $items | Where-Object { !$_.PSIsContainer }              | Select-Object -ExpandProperty Name

    # Directory -> blue
    if ($dirList.Count -gt 0) {
        Write-Host ($dirList -join " ") -ForegroundColor Blue -NoNewline
        Write-Host " " -NoNewline
    }
    # Link -> cyan
    if ($linkList.Count -gt 0) {
        Write-Host ($linkList -join " ") -ForegroundColor Cyan -NoNewline
        Write-Host " " -NoNewline
    }
    # File -> White
    if ($fileList.Count -gt 0) {
        Write-Host ($fileList -join " ") -ForegroundColor White
    }
}
function Get-FilesVerbose {
    [CmdletBinding()]
    param(
        [string]$Path = "./"
    )
    Get-ChildItem $Path
}
function Get-FileAttributes {
    [CmdletBinding()]
    param(
        [Parameter(Position=0)]
        [string]$Path = ".",
        [switch]$All # Show all files?
    )

    # Read direectory
    $opt = @{
        Path = $Path
        Force = $All.IsPresent
    }
    $items = Get-ChildItem @opt

    foreach ($item in $items) {
        $attrStr = "----" # R H S A
        $flag = $item.Attributes

        # Read only -> R
        if ($flag.HasFlag([System.IO.FileAttributes]::ReadOnly)) {
            $attrStr = $attrStr.Remove(0,1).Insert(0,"r")
        }
        # Hide -> H
        if ($flag.HasFlag([System.IO.FileAttributes]::Hidden)) {
            $attrStr = $attrStr.Remove(1,1).Insert(1,"h")
        }
        # System -> S
        if ($flag.HasFlag([System.IO.FileAttributes]::System)) {
            $attrStr = $attrStr.Remove(2,1).Insert(2,"s")
        }
        # Archive -> A
        if ($flag.HasFlag([System.IO.FileAttributes]::Archive)) {
            $attrStr = $attrStr.Remove(3,1).Insert(3,"a")
        }

        # Junction -> l
        if ($null -ne $item.LinkType) {
            $attrStr += "l"
        } else {
            $attrStr += "-"
        }

        Write-Output "$attrStr  $($item.Name)"
    }
}

##### STATISTIC #####
function Get-Size {
    [CmdletBinding()]
    param(
        [string]$Path = "./"
    )
    $all = Get-ChildItem $Path -Recurse -File -Force -ErrorAction SilentlyContinue
    $sum = ($all | Measure-Object Length -Sum).Sum
    if ($sum -ge 1GB) {
        $size = "{0:N2} GB" -f ($sum / 1GB)
    } elseif ($sum -ge 1MB) {
        $size = "{0:N2} MB" -f ($sum / 1MB)
    } elseif ($sum -ge 1KB) {
        $size = "{0:N2} KB" -f ($sum / 1KB)
    } else {
        $size = "$sum Bytes"
    }
    return $size
}

##### ALIASES #####
Set-Alias exists Test-Exists
Set-Alias isfile Test-File
Set-Alias isdir Test-Directory
Set-Alias issymblink Test-SymbolicLink
Set-Alias ishardlink Test-HardLink
Set-Alias mkfile New-File
Set-Alias mkdir New-Directory
Set-Alias mksymblink New-SymbolicLink
Set-Alias mkhardlink New-HardLink
Set-Alias rmdirforce Remove-DirFull
Set-Alias ls Get-Files
Set-Alias ll Get-FilesVerbose
Set-Alias lsattr Get-FileAttributes
