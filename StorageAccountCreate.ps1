$storageParms = @{
    ResourceGroupName = 'LearningRG'
    Name = 'learningstorageaccount1'
    Location = 'eastus'
    SkuName = 'Standard_RAGRS'
}
$newStorage = New-AzStorageAccount @storageParms