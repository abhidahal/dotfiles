# $PROFILE for the script location
Invoke-Expression (&starship init powershell)
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
set-alias -name c -value clear
set-alias -name gti -value git
set-alias -name q -value exit

function .. { cd .. }

function gco([string]$BranchName)
{
    git checkout $BranchName
}
function gcob([string]$BranchName)
{
    git checkout -b $BranchName
}
function campr([string]$LabelName)
{
    gh pr create -a @me -r @h3cksamrat -l $LabelName
}
function cpr([string]$LabelName)
{
    gh pr create -a @me -l $LabelName
}

function vpr()
{
    gh pr view --web
}