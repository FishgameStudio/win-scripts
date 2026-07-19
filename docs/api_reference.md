# API Reference

All public PowerShell APIs documented here.


---

### `Test-Exists`

#### SYNTAX
```pwsh
Test-Exists <Path> [<CommonParameters>]
```

#### PARAMETERS
- Path \<string\>
  | **Option**                 | **Value** |
  |----------------------------|-----------|
  | Required?                  | true |
  | Position?                  | 0 |
  | Accept pipeline input?     | false |
  | Parameter set name         | (All) |
  | Aliases                    | None |
  | Dynamic?                   | false     |
  | Accept wildcard characters?| false |

#### INPUTS
None
#### OUTPUTS
System.Object
#### ALIASES
```pwsh
exists
```

---

### `Test-File`

#### SYNTAX
```pwsh
Test-File <File> [<CommonParameters>]
```

#### PARAMETERS
- File \<string\>
  | **Option**                 | **Value** |
  |----------------------------|-----------|
  | Required?                  | true |
  | Position?                  | 0 |
  | Accept pipeline input?     | false |
  | Parameter set name         | (All) |
  | Aliases                    | None |
  | Dynamic?                   | false     |
  | Accept wildcard characters?| false |

#### INPUTS
None
#### OUTPUTS
System.Object
#### ALIASES
```pwsh
isfile
```

---

### `Test-Directory`

#### SYNTAX
```pwsh
Test-Directory <Directory> [<CommonParameters>]
```

#### PARAMETERS
- Directory \<string\>
  | **Option**                 | **Value** |
  |----------------------------|-----------|
  | Required?                  | true |
  | Position?                  | 0 |
  | Accept pipeline input?     | false |
  | Parameter set name         | (All) |
  | Aliases                    | None |
  | Dynamic?                   | false     |
  | Accept wildcard characters?| false |

#### INPUTS
None
#### OUTPUTS
System.Object
#### ALIASES
```pwsh
isdir
```

---

### `Test-SymbolicLink`

#### SYNTAX
```pwsh
Test-SymbolicLink <Path> [<CommonParameters>]
```

#### PARAMETERS
- Path \<string\>
  | **Option**                 | **Value** |
  |----------------------------|-----------|
  | Required?                  | true |
  | Position?                  | 0 |
  | Accept pipeline input?     | false |
  | Parameter set name         | (All) |
  | Aliases                    | None |
  | Dynamic?                   | false     |
  | Accept wildcard characters?| false |

#### INPUTS
None
#### OUTPUTS
System.Object
#### ALIASES
```pwsh
issymblink
```

---

### `Test-HardLink`

#### SYNTAX
```pwsh
Test-HardLink <File> [<CommonParameters>]
```

#### PARAMETERS
- File \<string\>
  | **Option**                 | **Value** |
  |----------------------------|-----------|
  | Required?                  | true |
  | Position?                  | 0 |
  | Accept pipeline input?     | false |
  | Parameter set name         | (All) |
  | Aliases                    | None |
  | Dynamic?                   | false     |
  | Accept wildcard characters?| false |

#### INPUTS
None
#### OUTPUTS
System.Object
#### ALIASES
```pwsh
ishardlink
```


---

### `New-File`

#### SYNTAX
```pwsh
New-File <File> [<CommonParameters>]
```

#### PARAMETERS
- File \<string\>
  | **Option**                 | **Value** |
  |----------------------------|-----------|
  | Required?                  | true |
  | Position?                  | 0 |
  | Accept pipeline input?     | false |
  | Parameter set name         | (All) |
  | Aliases                    | None |
  | Dynamic?                   | false     |
  | Accept wildcard characters?| false |

#### INPUTS
None
#### OUTPUTS
System.Object
#### ALIASES
```pwsh
mkfile
```


---

### `New-Directory`

#### SYNTAX
```pwsh
New-Directory <Directory> [<CommonParameters>]
```

#### PARAMETERS
- Directory \<string\>
  | **Option**                 | **Value** |
  |----------------------------|-----------|
  | Required?                  | true |
  | Position?                  | 0 |
  | Accept pipeline input?     | false |
  | Parameter set name         | (All) |
  | Aliases                    | None |
  | Dynamic?                   | false     |
  | Accept wildcard characters?| false |

#### INPUTS
None
#### OUTPUTS
System.Object
#### ALIASES
```pwsh
mkdir
```

---

### `New-SymbolicLink`

#### SYNTAX
```pwsh
New-SymbolicLink <Link> [<CommonParameters>]
```

#### PARAMETERS
- Link \<string\>
  | **Option**                 | **Value** |
  |----------------------------|-----------|
  | Required?                  | true |
  | Position?                  | 0 |
  | Accept pipeline input?     | false |
  | Parameter set name         | (All) |
  | Aliases                    | None |
  | Dynamic?                   | false     |
  | Accept wildcard characters?| false |

#### INPUTS
None
#### OUTPUTS
System.Object
#### ALIASES
```pwsh
mksymblink
```

---

### `New-HardLink`

#### SYNTAX
```pwsh
New-HardLink <Link> [<CommonParameters>]
```

#### PARAMETERS
- Link \<string\>
  | **Option**                 | **Value** |
  |----------------------------|-----------|
  | Required?                  | true |
  | Position?                  | 0 |
  | Accept pipeline input?     | false |
  | Parameter set name         | (All) |
  | Aliases                    | None |
  | Dynamic?                   | false     |
  | Accept wildcard characters?| false |

#### INPUTS
None
#### OUTPUTS
System.Object
#### ALIASES
```pwsh
mkhardlink
```

---

### `Remove-DirFull`

#### SYNTAX
```pwsh
Remove-DirFull <Directory> [<CommonParameters>]
```

#### PARAMETERS
- Directory \<string\>
  | **Option**                 | **Value** |
  |----------------------------|-----------|
  | Required?                  | true |
  | Position?                  | 0 |
  | Accept pipeline input?     | false |
  | Parameter set name         | (All) |
  | Aliases                    | None |
  | Dynamic?                   | false     |
  | Accept wildcard characters?| false |

#### INPUTS
None
#### OUTPUTS
System.Object
#### ALIASES
```pwsh
rmdirforce
```

---

### `Get-Files`

#### SYNTAX
```pwsh
Get-Files [Path] [All] [<CommonParameters>]
```

#### PARAMETERS
- All \<switch\>
  | **Option**                 | **Value** |
  |----------------------------|-----------|
  | Required?                  | false |
  | Position?                  | Named |
  | Accept pipeline input?     | false |
  | Parameter set name         | (All) |
  | Aliases                    | None |
  | Dynamic?                   | false     |
  | Accept wildcard characters?| false |

- Path \<string\>
  | **Option**                 | **Value** |
  |----------------------------|-----------|
  | Required?                  | false |
  | Position?                  | 0 |
  | Accept pipeline input?     | false |
  | Parameter set name         | (All) |
  | Aliases                    | None |
  | Dynamic?                   | false     |
  | Accept wildcard characters?| false |

#### INPUTS
None
#### OUTPUTS
System.Object
#### ALIASES
```pwsh
ls
```

---

### `Get-FilesVerbose`

#### SYNTAX
```pwsh
Get-FilesVerbose [Path] [<CommonParameters>]
```

#### PARAMETERS
- Path \<string\>
  | **Option**                 | **Value** |
  |----------------------------|-----------|
  | Required?                  | false |
  | Position?                  | 0 |
  | Accept pipeline input?     | false |
  | Parameter set name         | (All) |
  | Aliases                    | None |
  | Dynamic?                   | false     |
  | Accept wildcard characters?| false |

#### INPUTS
None
#### OUTPUTS
System.Object
#### ALIASES
```pwsh
ll
```

---

### `Get-FileAttributes`

#### SYNTAX
```pwsh
Get-FileAttributes [Path] [All] [<CommonParameters>]
```

#### PARAMETERS
- All \<switch\>
  | **Option**                 | **Value** |
  |----------------------------|-----------|
  | Required?                  | false |
  | Position?                  | Named |
  | Accept pipeline input?     | false |
  | Parameter set name         | (All) |
  | Aliases                    | None |
  | Dynamic?                   | false     |
  | Accept wildcard characters?| false |

- Path \<string\>
  | **Option**                 | **Value** |
  |----------------------------|-----------|
  | Required?                  | false |
  | Position?                  | 0 |
  | Accept pipeline input?     | false |
  | Parameter set name         | (All) |
  | Aliases                    | None |
  | Dynamic?                   | false     |
  | Accept wildcard characters?| false |

#### INPUTS
None
#### OUTPUTS
System.Object
#### ALIASES
```pwsh
lsattr
```

---

### `Get-Size`

#### SYNTAX
```pwsh
Get-Size [Path] [<CommonParameters>]
```

#### PARAMETERS
- Path \<string\>
  | **Option**                 | **Value** |
  |----------------------------|-----------|
  | Required?                  | false |
  | Position?                  | 0 |
  | Accept pipeline input?     | false |
  | Parameter set name         | (All) |
  | Aliases                    | None |
  | Dynamic?                   | false     |
  | Accept wildcard characters?| false |

#### INPUTS
None
#### OUTPUTS
System.Object
#### ALIASES
```pwsh
du
```


---

### `Initialize-GitRepo`

#### SYNTAX
```pwsh
Initialize-GitRepo [<CommonParameters>]
```

#### PARAMETERS
#### INPUTS
None
#### OUTPUTS
System.Object
#### ALIASES
```pwsh
ginit
```


---

### `Initialize-GitRepoWith`

#### SYNTAX
```pwsh
Initialize-GitRepoWith <TemplatePath> [<CommonParameters>]
```

#### PARAMETERS
- TemplatePath \<string\>
  | **Option**                 | **Value** |
  |----------------------------|-----------|
  | Required?                  | true |
  | Position?                  | 0 |
  | Accept pipeline input?     | false |
  | Parameter set name         | (All) |
  | Aliases                    | None |
  | Dynamic?                   | false     |
  | Accept wildcard characters?| false |

#### INPUTS
None
#### OUTPUTS
System.Object
#### ALIASES
```pwsh
ginitWith
```


---

### `Test-IsGitRepo`

#### SYNTAX
```pwsh
Test-IsGitRepo [<CommonParameters>]
```

#### PARAMETERS
#### INPUTS
None
#### OUTPUTS
System.Object
#### ALIASES
```pwsh
isGitRepo
```


---

### `Get-CurrentBranch`

#### SYNTAX
```pwsh
Get-CurrentBranch [<CommonParameters>]
```

#### PARAMETERS
#### INPUTS
None
#### OUTPUTS
System.Object
#### ALIASES
```pwsh
currBranch
```


---

### `Set-CurrentBranch`

#### SYNTAX
```pwsh
Set-CurrentBranch <Branch> [<CommonParameters>]
```

#### PARAMETERS
- Branch \<string\>
  | **Option**                 | **Value** |
  |----------------------------|-----------|
  | Required?                  | true |
  | Position?                  | 0 |
  | Accept pipeline input?     | false |
  | Parameter set name         | (All) |
  | Aliases                    | None |
  | Dynamic?                   | false     |
  | Accept wildcard characters?| false |

#### INPUTS
None
#### OUTPUTS
System.Object
#### ALIASES
```pwsh
checkout, switchBranch
```


---

### `Remove-Branch`

#### SYNTAX
```pwsh
Remove-Branch <Branch> [<CommonParameters>]
```

#### PARAMETERS
- Branch \<string\>
  | **Option**                 | **Value** |
  |----------------------------|-----------|
  | Required?                  | true |
  | Position?                  | 0 |
  | Accept pipeline input?     | false |
  | Parameter set name         | (All) |
  | Aliases                    | None |
  | Dynamic?                   | false     |
  | Accept wildcard characters?| false |

#### INPUTS
None
#### OUTPUTS
System.Object
#### ALIASES
```pwsh
delBranch
```


---

### `Get-AllBranches`

#### SYNTAX
```pwsh
Get-AllBranches [<CommonParameters>]
```

#### PARAMETERS
#### INPUTS
None
#### OUTPUTS
System.Object
#### ALIASES
```pwsh
allBranches
```


---

### `Test-UpToDate`

#### SYNTAX
```pwsh
Test-UpToDate [<CommonParameters>]
```

#### PARAMETERS
#### INPUTS
None
#### OUTPUTS
System.Object
#### ALIASES
```pwsh
isuptodate
```


---

### `New-Commit`

#### SYNTAX
```pwsh
New-Commit <Message> [<CommonParameters>]
```

#### PARAMETERS
- Message \<string\>
  | **Option**                 | **Value** |
  |----------------------------|-----------|
  | Required?                  | true |
  | Position?                  | 0 |
  | Accept pipeline input?     | false |
  | Parameter set name         | (All) |
  | Aliases                    | None |
  | Dynamic?                   | false     |
  | Accept wildcard characters?| false |

#### INPUTS
None
#### OUTPUTS
System.Object
#### ALIASES
```pwsh
ci
```


---

### `New-AmendedCommit`

#### SYNTAX
```pwsh
New-AmendedCommit <Message> [<CommonParameters>]
```

#### PARAMETERS
- Message \<string\>
  | **Option**                 | **Value** |
  |----------------------------|-----------|
  | Required?                  | true |
  | Position?                  | 0 |
  | Accept pipeline input?     | false |
  | Parameter set name         | (All) |
  | Aliases                    | None |
  | Dynamic?                   | false     |
  | Accept wildcard characters?| false |

#### INPUTS
None
#### OUTPUTS
System.Object
#### ALIASES
```pwsh
ciamend
```


---

### `Get-AllCommits`

#### SYNTAX
```pwsh
Get-AllCommits [<CommonParameters>]
```

#### PARAMETERS
#### INPUTS
None
#### OUTPUTS
System.Object
#### ALIASES
```pwsh
log
```


---

### `Write-GitStatus`

#### SYNTAX
```pwsh
Write-GitStatus [<CommonParameters>]
```

#### PARAMETERS
#### INPUTS
None
#### OUTPUTS
System.Object
#### ALIASES
```pwsh
gstat
```


---

### `Merge-Branch`

#### SYNTAX
```pwsh
Merge-Branch <Branch> [<CommonParameters>]
```

#### PARAMETERS
- Branch \<string\>
  | **Option**                 | **Value** |
  |----------------------------|-----------|
  | Required?                  | true |
  | Position?                  | 0 |
  | Accept pipeline input?     | false |
  | Parameter set name         | (All) |
  | Aliases                    | None |
  | Dynamic?                   | false     |
  | Accept wildcard characters?| false |

#### INPUTS
None
#### OUTPUTS
System.Object
#### ALIASES
```pwsh
merge
```


---

### `Merge-BranchNoFF`

#### SYNTAX
```pwsh
Merge-BranchNoFF <Branch> [Message] [<CommonParameters>]
```

#### PARAMETERS
- Branch \<string\>
  | **Option**                 | **Value** |
  |----------------------------|-----------|
  | Required?                  | true |
  | Position?                  | 0 |
  | Accept pipeline input?     | false |
  | Parameter set name         | (All) |
  | Aliases                    | None |
  | Dynamic?                   | false     |
  | Accept wildcard characters?| false |

- Message \<string\>
  | **Option**                 | **Value** |
  |----------------------------|-----------|
  | Required?                  | false |
  | Position?                  | 1 |
  | Accept pipeline input?     | false |
  | Parameter set name         | (All) |
  | Aliases                    | None |
  | Dynamic?                   | false     |
  | Accept wildcard characters?| false |

#### INPUTS
None
#### OUTPUTS
System.Object
#### ALIASES
```pwsh
mergeNoff
```


---

### `Push-Branch`

#### SYNTAX
```pwsh
Push-Branch [Branch] [Remote] [<CommonParameters>]
```

#### PARAMETERS
- Branch \<string\>
  | **Option**                 | **Value** |
  |----------------------------|-----------|
  | Required?                  | false |
  | Position?                  | 0 |
  | Accept pipeline input?     | false |
  | Parameter set name         | (All) |
  | Aliases                    | None |
  | Dynamic?                   | false     |
  | Accept wildcard characters?| false |

- Remote \<string\>
  | **Option**                 | **Value** |
  |----------------------------|-----------|
  | Required?                  | false |
  | Position?                  | 1 |
  | Accept pipeline input?     | false |
  | Parameter set name         | (All) |
  | Aliases                    | None |
  | Dynamic?                   | false     |
  | Accept wildcard characters?| false |

#### INPUTS
None
#### OUTPUTS
System.Object
#### ALIASES
```pwsh
push
```


---

### `Receive-Pull`

#### SYNTAX
```pwsh
Receive-Pull [<CommonParameters>]
```

#### PARAMETERS
#### INPUTS
None
#### OUTPUTS
System.Object
#### ALIASES
```pwsh
pull
```


---

### `Get-Difference`

#### SYNTAX
```pwsh
Get-Difference [Old] [New] [<CommonParameters>]
```

#### PARAMETERS
- New \<string\>
  | **Option**                 | **Value** |
  |----------------------------|-----------|
  | Required?                  | false |
  | Position?                  | 1 |
  | Accept pipeline input?     | false |
  | Parameter set name         | (All) |
  | Aliases                    | None |
  | Dynamic?                   | false     |
  | Accept wildcard characters?| false |

- Old \<string\>
  | **Option**                 | **Value** |
  |----------------------------|-----------|
  | Required?                  | false |
  | Position?                  | 0 |
  | Accept pipeline input?     | false |
  | Parameter set name         | (All) |
  | Aliases                    | None |
  | Dynamic?                   | false     |
  | Accept wildcard characters?| false |

#### INPUTS
None
#### OUTPUTS
System.Object
#### ALIASES
```pwsh
gdiff
```


---

### `Add-File`

#### SYNTAX
```pwsh
Add-File [<CommonParameters>]
```

#### PARAMETERS
#### INPUTS
None
#### OUTPUTS
System.Object
#### ALIASES
```pwsh
ga
```


---

### `Revoke-Added`

#### SYNTAX
```pwsh
Revoke-Added [<CommonParameters>]
```

#### PARAMETERS
#### INPUTS
None
#### OUTPUTS
System.Object
#### ALIASES
```pwsh
rkadded
```


---

### `Initialize-Remote`

#### SYNTAX
```pwsh
Initialize-Remote <URL> [<CommonParameters>]
```

#### PARAMETERS
- URL \<string\>
  | **Option**                 | **Value** |
  |----------------------------|-----------|
  | Required?                  | true |
  | Position?                  | 0 |
  | Accept pipeline input?     | false |
  | Parameter set name         | (All) |
  | Aliases                    | None |
  | Dynamic?                   | false     |
  | Accept wildcard characters?| false |

#### INPUTS
None
#### OUTPUTS
System.Object
#### ALIASES
```pwsh
initRemote
```

---

### `Confirm-Action`

#### SYNTAX
```pwsh
Confirm-Action <Prompt> [DefaultY] [<CommonParameters>]
```

#### PARAMETERS
- DefaultY \<bool\>
  | **Option**                 | **Value** |
  |----------------------------|-----------|
  | Required?                  | false |
  | Position?                  | 1 |
  | Accept pipeline input?     | false |
  | Parameter set name         | (All) |
  | Aliases                    | None |
  | Dynamic?                   | false     |
  | Accept wildcard characters?| false |

- Prompt \<string\>
  | **Option**                 | **Value** |
  |----------------------------|-----------|
  | Required?                  | true |
  | Position?                  | 0 |
  | Accept pipeline input?     | false |
  | Parameter set name         | (All) |
  | Aliases                    | None |
  | Dynamic?                   | false     |
  | Accept wildcard characters?| false |

#### INPUTS
None
#### OUTPUTS
System.Object
#### ALIASES
```pwsh
rusure
```

