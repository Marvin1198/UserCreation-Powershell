$DepartmentsOU = "OU=Departments,DC=yourdomainname,DC=local"
New-ADOrganizationalUnit -Name "Projects" -Path $DepartmentsOU

$OU = "OU=Projects,OU=Departments,DC=yourdomainname,DC=local"

New-ADUser -Name "User1" -GivenName "User" -Surname "One" -SamAccountName "User1" -DisplayName "User1" -Initials "U1" -Path $OU -StreetAddress "123 Main Street" -City "City" -POBox "12345" -State "State" -PostalCode "54321" -Country "US" -Description "User is created with PowerShell Script"
Set-ADAccountExpiration -Identity "User1" -DateTime "4/23/2023"
Get-ADUser -Identity "User1" | Set-ADUser -Replace @{info = "Security Question Answer: ABC"}

New-ADUser -Name "User2" -GivenName "User" -Surname "Two" -SamAccountName "User2" -DisplayName "User2" -Initials "U2" -Path $OU -StreetAddress "456 Oak Street" -City "City" -POBox "54321" -State "State" -PostalCode "12345" -Country "US" -Description "User is created with PowerShell Script" 
Set-ADAccountExpiration -Identity "User2" -DateTime "4/23/2023"
Get-ADUser -Identity "User2" | Set-ADUser -Replace @{info = "Security Question Answer: XYZ"}

New-ADUser  -Name "User3" -GivenName "User" -Surname "Three" -SamAccountName "User3" -DisplayName "User3" -Initials "U3" -Path $OU -StreetAddress "789 Pine Street" -City "City" -POBox "98765" -State "State" -PostalCode "67890" -Country "US" -Description "User is created with PowerShell Script" 
Set-ADAccountExpiration -Identity "User3" -DateTime "4/23/2023"
Get-ADUser -Identity "User3" | Set-ADUser -Replace @{info = "Security Question Answer: 123"}
