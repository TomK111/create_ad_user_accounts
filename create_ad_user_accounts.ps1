Import-Module ActiveDirectory

$firstName = Read-Host -Prompt "Please enter the first name"
$lastName = Read-Host -Prompt "Please enter the last name"

New-ADUser `
    -Name "$firstName $lastName" `
    -GivenName $firstName `
    -Surname $lastName
    -UserPrincipalName "$firstName.$lastName" `
    -AccountPassword (ConvertTo-SecureString "Passw0rd" -AsPlainText -Force) `
    #-Path "<path to OU>" 
    -ChangePasswordAtLogon 1 `
    -Enabled 1`
