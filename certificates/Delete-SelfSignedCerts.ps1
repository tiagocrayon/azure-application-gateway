Disconnect-AzAccount
$conn = Connect-AzAccount -DeviceCode -TenantId ""
$context = Set-AzContext -SubscriptionId "" # Microsoft Partner Network - Owner

$keyVaultName = "lab-bizay-kv-02"

$certificates = Get-AzKeyVaultCertificate -VaultName $keyVaultName

foreach ($cert in $certificates) {
    $certName = $cert.Name
    Write-Output "Deleting certificate: $certName"
    Remove-AzKeyVaultCertificate -VaultName $keyVaultName -Name $certName -Force
}

Write-Output "All certificates have been deleted from Key Vault: $keyVaultName"
