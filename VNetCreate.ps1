$vnetParms = @{
    ResourceGroupName = 'LearningRG'
    Name = 'LearningVNet'
    Location = 'eastus'
    AddressPrefix = '10.0.0.0/16'
}
$newVNet = New-AzVirtualNetwork @vnetParms 