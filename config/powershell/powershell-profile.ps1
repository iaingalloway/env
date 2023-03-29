Set-PSReadLineOption -EditMode Emacs
Invoke-Expression (&starship init powershell)

# git
New-Alias g git

function gs { git status $args }
function ga { git add $args }

# kubectl
$KubectlCompletionScript = (kubectl completion powershell)
$KubectlCompletionScript | Out-String | Invoke-Expression 

New-Alias k kubectl
$KubectlAliasCompletionScript = $KubectlCompletionScript -replace "kubectl", "k"
$KubectlAliasCompletionScript | Out-String | Invoke-Expression

function kclear { kubectl config unset current-context }
function kuse {
    param(
        [string]$Context
    )

    kubectl config use-context $Context
}

Register-ArgumentCompleter -CommandName kuse -ParameterName Context -ScriptBlock {
    param($commandName, $parameterName, $wordToComplete, $commandAst, $fakeBoundParameter)
    $Contexts = (kubectl config get-contexts --output='name') | Where-Object { $_ -like "$wordToComplete*" }
    return $Contexts
}
