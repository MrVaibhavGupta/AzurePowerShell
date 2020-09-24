$subnetParms = @{
    Name = "LearningSubnet"
    AddressPrefix = "10.0.0.0/24"
}
$newSubnetConfig = New-AzVirtualNetworkSubnetConfig @subnetParms