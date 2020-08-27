$publicipParms = @{
    ResourceGroupName = 'LearningRG'
    Name = 'LearningPublicIP'
    Location = 'eastus'
    AllocationMethod = 'Dynamic'
    SKU = 'Basic'
}
$newPublicIP = New-AzPublicIpAddress @publicipParms