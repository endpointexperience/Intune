###SSO Prompt Detection###
$regkey="HKLM:\Software\Policies\Microsoft\Windows\AAD"
$name="AutoAcceptSsoPermission"
$value=1

#Registry Detection Template

If (!(Test-Path $regkey))
{
Write-Output 'RegKey for SSO Prompt not available - remediate'
Exit 1
}


$check=(Get-ItemProperty -path $regkey -name $name -ErrorAction SilentlyContinue).$name
if ($check -eq $value){
write-output 'SSO Prompt setting ok - no remediation required'
Exit 0
}

else {
write-output 'RegKey for SSO Prompt not available - go and remediate'
Exit 1
}