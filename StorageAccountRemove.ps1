$storageParms = @{
    ResourceGroupName = 'LearningRG'
    Name = 'learningstorageaccount1'
}
$removeStorage = Remove-AzStorageAccount @storageParms