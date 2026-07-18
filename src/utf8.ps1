# Enable UTF-8 Encoding.

[Console]::OutputEncoding = [System.Text.Encoding]::UTF8
[Console]::InputEncoding  = [System.Text.Encoding]::UTF8
$OutputEncoding = [System.Text.Encoding]::UTF8
$PSDefaultParameterValues['Get-Content:Encoding'] = 'UTF8'
chcp 65001 | Out-Null
