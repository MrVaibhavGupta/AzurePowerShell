$netSGParms = @{
    ResourceGroupName = 'LearningRG'
    Name = 'LearningNetSG'
}
$removeNetSG = Remove-AzNetworkSecurityGroup @netSGParms