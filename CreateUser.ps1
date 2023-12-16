


# Define user information
$firstName = "Francis"
$lastName = "Hopkins"
$displayName = "$firstName $lastName"
$username = "CORP\Hopkins.Francis"
$office = "Springfield"
$email = "Hopkins.Francis@GlobeXpower.com"
$department = "Sales"

# Define the OU (Organizational Unit) where the user will be created
$ou = "OU=Users,DC=yourdomain,DC=com"

# Create a password for the user
$password = ConvertTo-SecureString -AsPlainText "P@ssw0rd" -Force

# Create the user
New-ADUser -SamAccountName $username -UserPrincipalName "$username@yourdomain.com" -Name $displayName -GivenName $firstName -Surname $lastName -EmailAddress $email -Office $office -Department $department -AccountPassword $password -Enabled $true -Path $ou
