$netSGParms = @{
    ResourceGroupName = 'LearningRG'
    Name = 'LearningNetSG'
    Location = 'eastus'
    SecurityRules = $newRuleConfig
}
$newNetSG = New-AzNetworkSecurityGroup @netSGParms