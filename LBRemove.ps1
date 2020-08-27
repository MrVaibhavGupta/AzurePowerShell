$removelbParms = @{
    ResourceGroupName = 'LearningRG'
    Name = 'LearningLB'
}
$removeLB = Remove-AzLoadBalancer @removelbParms