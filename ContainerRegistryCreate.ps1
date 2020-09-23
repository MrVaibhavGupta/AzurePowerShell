$identityId = Get-AzUserAssignedIdentity -Name LearningIdentity -ResourceGroupName LearningRG
$keyId = Get-AzKeyVaultKey -Name LearningKey -VaultName LearningKeyVault-dev
$registryParms = @{
    ResourceGroupName = "LearningRG"
    Name = "LearningCRdev"
    Location = "East US"
    SKU = "Premium"
    Identity = $identityId
    EncryptionKey = $keyId
}
$newContainerRegistry = New-AzContainerRegistry @registryParms