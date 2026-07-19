# Some functions for parsing a string.

function Confirm-Action {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory, HelpMessage="Prompt to show")]
        [ValidateNotNullOrEmpty()]
        [string]$Prompt,

        [Parameter(HelpMessage="Choose Yes if no input, default is false (Enter to cancel)")]
        [bool]$DefaultY = $false
    )

    do {
        if ($DefaultY) {
            $displayText = "$Prompt [Y/n]"
        }
        else {
            $displayText = "$Prompt [y/N]"
        }
        $inputStr = Read-Host $displayText
        $inputStr = $inputStr.Trim()

        if ([string]::IsNullOrEmpty($inputStr)) {
            if ($DefaultY) {
                return $true
            }
            else {
                return $false
            }
        }

        if ($inputStr -in "y","Y","n","N") {
            return $inputStr -in "y","Y"
        }
    } while ($true)
}

##### ALIASES #####
Set-Alias rusure Confirm-Action
