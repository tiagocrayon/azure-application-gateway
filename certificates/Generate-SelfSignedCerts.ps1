Disconnect-AzAccount
$conn = Connect-AzAccount -DeviceCode -TenantId ""

$context = Set-AzContext -SubscriptionId "5aadc750-a849-47ed-b3b8-0c41a5f3f9f9" # Microsoft Partner Network - Owner


# -----------------------------------------------
# Configuration
# -----------------------------------------------
# Path to the CSV file. Update this path as needed.
$csvPath = "C:\Users\tiaisabe\OneDrive - Crayon Group\Documentos\Projetos\Bizay\Repo\azure-application-gateway\certificates\HAProxyAGWRuleListV7.0Beta.csv"

# Temporary password for the PFX file.
# NOTE: In a production scenario, use a more secure method to handle credentials.
$pfxPasswordPlain = "P@ssw0rd!"
$pfxPassword = ConvertTo-SecureString -String $pfxPasswordPlain -Force -AsPlainText

# -----------------------------------------------
# Import Required Modules
# -----------------------------------------------
# Ensure the Az.KeyVault module is available.
Import-Module Az.KeyVault -ErrorAction Stop

# -----------------------------------------------
# Read and Filter CSV Data
# -----------------------------------------------
# Import CSV data.
$csvData = Import-Csv -Path $csvPath -Delimiter ";" -Encoding UTF8

# Filter rows where region-instance is "beta" and listener-protocol is "https"
$filteredRows = $csvData | Where-Object {
    $_."region-instance" -eq "beta" -and $_."listener-protocol" -eq "https"
}

# Group the rows by the certificate name column (assuming column "certificate-name")
$certGroups = $filteredRows | Group-Object -Property "certificate-name"

# -----------------------------------------------
# Process Each Certificate Group
# -----------------------------------------------
foreach ($group in $certGroups) {
    # Certificate name for this group
    $certName = $group.Name
    Write-Output "Processing certificate: $certName"

    # Assume the KeyVault and domain are the same for all rows in the group.
    $firstRow = $group.Group[0]
    $keyVaultName = $firstRow."key-vault"
    $domain = $firstRow.domain

    # Initialize an array for SANs.
    $sanList = @()

    # Gather SANs from the "hostnames" column of each row.
    foreach ($row in $group.Group) {
        # If the hostnames field contains multiple comma-separated names, split and trim.
        $hostnames = $row.hostnames -split "," | ForEach-Object { $_.Trim() }
        $sanList += $hostnames
    }
    # Remove duplicate SANs.
    $sanList = $sanList | Select-Object -Unique

    # If the certificate name starts with "wild", add the wildcard SAN.
    if ($certName -like "wild*") {
        $wildcardSAN = "*." + $domain
        if (-not ($sanList -contains $wildcardSAN)) {
            $sanList += $wildcardSAN
        }
    }

    $sanListString
    Write-Output "SANs for $certName : $($sanList -join ', ')"

    # -----------------------------------------------
    # Generate the Self-Signed Certificate
    # -----------------------------------------------
    # This creates a certificate valid for 1 year.
    $cert = New-SelfSignedCertificate -DnsName $sanList `
                                        -CertStoreLocation "cert:\CurrentUser\My" `
                                        -NotAfter (Get-Date).AddYears(1) `
                                        -KeyExportPolicy Exportable `
                                        -KeyUsage DigitalSignature, KeyEncipherment

    # -----------------------------------------------
    # Export Certificate to PFX File
    # -----------------------------------------------
    $pfxPath = "$env:TEMP\$($cert.Thumbprint).pfx"
    Export-PfxCertificate -Cert $cert -FilePath $pfxPath -Password $pfxPassword

    # -----------------------------------------------
    # Import Certificate into Azure KeyVault
    # -----------------------------------------------
    Import-AzKeyVaultCertificate -VaultName $keyVaultName `
                                 -Name $certName `
                                 -FilePath $pfxPath `
                                 -Password $pfxPassword

    # Cleanup: Remove the temporary PFX file.
    Remove-Item -Path $pfxPath
    Remove-Item -Path "Cert:\CurrentUser\My\$($cert.Thumbprint)" -DeleteKey

    Write-Output "Certificate '$certName' has been imported into KeyVault '$keyVaultName'."
}
