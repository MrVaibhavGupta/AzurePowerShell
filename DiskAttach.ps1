$diskParms = @{
    ResourceGroupName = 'LearningRG'
    DiskName = 'LearningVM_datadisk1'
}
$disk = Get-AzDisk @diskParms
$vmParms = @{
    ResourceGroupName = 'LearningRG'
    Name = 'LearningVM'
}
$vm = Get-AzVM @vmParms
$diskaddParms = @{
    VM = $vm
    Name = 'LearningVM_datadisk1'
    CreateOption = 'Attach'
    ManagedDiskId = $disk.ID
    Lun = '1'
}
$newDiskAdd = Add-AzVMDataDisk @diskaddParms
Update-AzVM -ResourceGroupName 'LearningRG' -VM $vm