$ruleParms = @{
    Name = "RuleRDP"
    Protocol = "TCP"
    Direction = "Inbound"
    Priority = "300"
    SourceAddressPrefix = "*"
    SourcePortRange = "*"
    DestinationAddressPrefix = "*"
    DestinationPortRange = "3389"
    Access = "Allow"
}
$newRuleConfig = New-AzNetworkSecurityRuleConfig @ruleParms