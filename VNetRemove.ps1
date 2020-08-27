$vnetParms = @{
    ResourceGroupName = 'LearningRG'
    Name = 'LearningVNet'
}
$removeVNet = Remove-AzVirtualNetwork @vnetParms 