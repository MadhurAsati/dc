[string]$cred = "Happy@123"
$SPNSecret = ConvertTo-SecureString -String $cred -AsPlainText -Force
Write-Host "Adding Windo Features"
Install-WindowsFeature -name AD-Domain-Services -IncludeManagementTools
Write-Host "Testing ADDSfortst"
Test-ADDSForestInstallation -DomainName itingredients.com -InstallDns -SafeModeAdministratorPassword $SPNSecret
Write-Host "Installating ADDSfortst"
Install-ADDSForest -DomainName itingredients.com -InstallDNS -SafeModeAdministratorPassword $SPNSecret -Force
