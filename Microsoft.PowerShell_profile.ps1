# $PROFILE for the script location
Invoke-Expression (&starship init powershell)
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
set-alias -name c -value clear
set-alias -name q -value exit
function .. { cd .. }
function mkcd([string]$FileName)
{
    mkdir $FileName && cd $FileName
}