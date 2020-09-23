$KeyVault = Get-AzKeyVault -VaultName LearningKVault -ResourceGroupName LearningRG
$diskencryptParms = @{
    ResourceGroupName = 'LearningRG'
    VMName = 'LearningVM'
    DiskEncryptionKeyVaultUrl = $KeyVault.VaultUri
    DiskEncryptionKeyVaultId = $KeyVault.ResourceId
}
Set-AzVMDiskEncryptionExtension @diskencryptParms