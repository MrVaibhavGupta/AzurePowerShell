$policyParms = @{
    VaultName = "LearningKeyVault-dev"
    ResourceGroupName = "LearningRG"
    ObjectId = "7b25c5f1-2466-4f38-a99c-293e883732ad"
    PermissionsToKeys = "get", "list", "decrypt", "encrypt"
}
Set-AzKeyVaultAccessPolicy @policyParms