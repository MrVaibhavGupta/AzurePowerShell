$cred = Get-Credential
$vmssParms = @{
    ResourceGroupName = 'LearningRG'
    VMScaleSetName = 'LearningVMSS'
    Location = 'EastUS'
#    ImageName = 'Windows Server 2016 Datacenter - Gen1'
#    VmSize = 'Standard_DS1_v2 - 1 vcpu'
    VirtualNetworkName = 'LearningVNet'
    PublicIpAddressName = 'LearningIP'
    Credential = $cred
}
$newVMScaleSet = New-AzVmSS @vmssParms