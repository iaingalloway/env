$Languages = Get-WinUserLanguageList
$Languages.RemoveAll({ $args[0].LanguageTag -clike 'en-US' })
Set-WinUserLanguageList $Languages -Force
Get-WinUserLanguageList
