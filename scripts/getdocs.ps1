function Get-Document {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [string]$Command
    )

    try {
        # Get complete object
        $help = Get-Help $Command -Full -ErrorAction Stop
        $sb = [System.Text.StringBuilder]::new()

        # 1. title ### `CommandName`
        $null = $sb.AppendLine()
        $null = $sb.AppendLine("---")
        $null = $sb.AppendLine()
        $null = $sb.AppendLine("### ``$($help.Name)``")
        $null = $sb.AppendLine()

        # 2. SYNTAX 
        $null = $sb.AppendLine("#### SYNTAX")
        $null = $sb.AppendLine("``````pwsh")
        foreach ($syntaxItem in $help.syntax.syntaxItem) {
            $cmdParts = @($syntaxItem.name)
            foreach ($param in $syntaxItem.parameter) {
                if ($param.required -eq 'true') {
                    $cmdParts += "<$($param.name)>"
                } else {
                    $cmdParts += "[$($param.name)]"
                }
            }
            # Common params
            $cmdParts += "[<CommonParameters>]"
            $fullSyntax = $cmdParts -join " "
            $null = $sb.AppendLine($fullSyntax)
        }
        $null = $sb.AppendLine("``````")
        $null = $sb.AppendLine()

        # 3. PARAMETERS list
        $null = $sb.AppendLine("#### PARAMETERS")
        foreach ($param in $help.parameters.parameter) {
            $paramName = $param.name
            $type = $param.type.name
            $null = $sb.AppendLine("- $paramName `\<$type`\>")
            $null = $sb.AppendLine("  | **Option**                 | **Value** |")
            $null = $sb.AppendLine("  |----------------------------|-----------|")
            $null = $sb.AppendLine("  | Required?                  | $($param.required) |")
            $null = $sb.AppendLine("  | Position?                  | $($param.position) |")
            $null = $sb.AppendLine("  | Accept pipeline input?     | $($param.pipelineInput) |")
            $null = $sb.AppendLine("  | Parameter set name         | $($param.parameterSetName) |")
            $aliasStr = if ($param.aliases -and $param.aliases.alias) { $param.aliases.alias -join ", " } else { "None" }
            $null = $sb.AppendLine("  | Aliases                    | $aliasStr |")
            $null = $sb.AppendLine("  | Dynamic?                   | false     |")
            $null = $sb.AppendLine("  | Accept wildcard characters?| $($param.globbing) |")
            $null = $sb.AppendLine()
        }

        # 4. INPUTS
        $null = $sb.AppendLine("#### INPUTS")
        if ($help.inputTypes.inputType) {
            $inputText = $help.inputTypes.inputType.type.name -join ", "
        } else {
            $inputText = "None"
        }
        $null = $sb.AppendLine("$inputText".Trim())

        # 5. OUTPUTS
        $null = $sb.AppendLine("#### OUTPUTS")
        if ($help.returnValues.returnValue) {
            $outputText = $help.returnValues.returnValue.type.name -join ", "
        } else {
            $outputText = "None"
        }
        $null = $sb.AppendLine("$outputText")

        # 6. ALIASES
        $null = $sb.AppendLine("#### ALIASES")
        $aliasAll = Get-Alias -Definition $Command -ErrorAction SilentlyContinue
        if ($aliasAll) {
            $aliasText = $aliasAll.Name -join ", "
        } else {
            $aliasText = "None"
        }
        $null = $sb.AppendLine("``````pwsh")
        $null = $sb.AppendLine("$aliasText")
        $null = $sb.AppendLine("``````")

        $mdResult = $sb.ToString().Trim()
        # Output to console
        Write-Host $mdResult
        # Copy to clipboard
        $mdResult | clip
        Write-Host "`n✅ Markdown docs was copied!"
        return $mdResult
    } catch {
        Write-Host "`n❌ Error: $_" -ForegroundColor Red
        return ""
    }
}

Set-Alias gd Get-Document

function Get-AllDocs {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)]
        [string]$Text
    )
    $list = $Text.Split("`n")
    $res = ""
    foreach ($line in $list) {
        $func = $line.Split(" ")[2]
        $mdRes = Get-Document $func
        $res += $mdRes + "`n"
    }
    $res | Out-String | clip
    Write-Host "All Done! ✨🍰✨"
}
Set-Alias gad Get-AllDocs
