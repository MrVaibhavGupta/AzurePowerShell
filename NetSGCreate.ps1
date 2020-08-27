$netSGParms = @{
    ResourceGroupName = 'LearningRG'
    Name = 'LearningNetSG'
    Location = 'eastus'
}
$newNetSG = New-AzNetworkSecurityGroup @netSGParms