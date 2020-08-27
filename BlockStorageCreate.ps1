$storageParms = @{
    ResourceGroupName = 'LearningRG'
    Name = 'learningstorageaccount2'
    Location = 'eastus'
    Kind = 'BlobStorage'
    SkuName = 'Standard_RAGRS'
}
$newStorage = Set-AzStorageAccount @storageParms