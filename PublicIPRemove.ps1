$removepublicipParms = @{
    ResourceGroupName = 'LearningRG'
    Name = 'LearningPublicIP'
}
$removePublicIP = Remove-AzPublicIpAddress @removepublicipParms