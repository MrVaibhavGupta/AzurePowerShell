$diskconfigParms = @{
    SkuName = 'StandardSSD_LRS'
    Location = 'east us'
    CreateOption = 'Empty'
    DiskSizeGB = '32'
}
$newDiskConfig = New-AzDiskConfig @diskconfigParms
$diskcreateParms = @{
    DiskName = 'LearningVM_datadisk1'
    Disk = $newDiskConfig
    ResourceGroupName = 'LearningRG'
}
$newDisk = New-AzDisk @diskcreateParms 