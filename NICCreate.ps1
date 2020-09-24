$nicParms = @{
    Name = 'LearningNIC'
    ResourceGroupName = "LearningRG"
    Location ="East US"
    SubnetId = $newVNet.Subnets[0].Id
    PublicIpAddressId = $newPublicIP.Id
    NetworkSecurityGroupId = $newNetSG.Id
}
$newNIC = New-AzNetworkInterface