$vmParms = @{
    ResourceGroupName = 'LearningRG'
    Name = 'learn-vm1-dev'
    Location = 'eastus'
    ImageName = 'Win2016Datacenter'
    Credential = $cred 
    OpenPorts = 3389
    Add-AzureRmVMNetworkInterface -Id $newNIC.Id
}
$newVM1 = New-AzVM @vmParms
