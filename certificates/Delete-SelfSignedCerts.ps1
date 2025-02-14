Disconnect-AzAccount
$conn = Connect-AzAccount -DeviceCode -TenantId "39d93467-64d3-4e3b-aab5-f3fdf5bc949e"
$context = Set-AzContext -SubscriptionId "5aadc750-a849-47ed-b3b8-0c41a5f3f9f9" # Microsoft Partner Network - Owner

$keyVaultName = "lab-bizay-kv-02"

$certificates = Get-AzKeyVaultCertificate -VaultName $keyVaultName

foreach ($cert in $certificates) {
    $certName = $cert.Name
    Write-Output "Deleting certificate: $certName"
    Remove-AzKeyVaultCertificate -VaultName $keyVaultName -Name $certName -Force
}

Write-Output "All certificates have been deleted from Key Vault: $keyVaultName"
