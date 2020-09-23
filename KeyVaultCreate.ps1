$vaultParms = @{
    VaultName = "LearningKeyVault-dev"
    ResourceGroupName = "LearningRG"
    Location = "East US"
    SKU = "Premium"
}
$newKeyVault = New-AzKeyVault @vaultParms