$publicipParms = @{
    ResourceGroupName = 'LearningRG'
    Name = 'LearningPublicIP'
    Location = 'eastus'
    AllocationMethod = 'Dynamic'
    SKU = 'Basic'
}
$newPublicIP = New-AzPublicIpAddress @publicipParms
$lbfeipParms = @{
    Name = 'LearningLBFrontEndIP'
    PublicIpAddress = $newPublicIP
}
$newLBfeIP = New-AzLoadBalancerFrontendIpConfig @lbfeipParms
$newLBbepool = New-AzLoadBalancerBackendAddressPoolConfig -Name 'LearningLBBackendPool'
$healthParms = @{
    Name = 'LearningHeathProbe'
    Protocol = 'http'
    Port = '80'
    RequestPath = '/'
    IntervalInSeconds = '360'
    ProbeCount = '5'
}
$newHealthProbe = New-AzLoadBalancerProbeConfig @healthParms
$lbruleParms = @{
    Name = 'LearningHTTPRule'
    Protocol = 'tcp'
    Probe = $newHealthProbe 
    FrontendPort = '80'
    BackendPort = '80'
    FrontendIpConfiguration = $newLBfeIP
    BackendAddressPool = $newLBbepool
}
$newLBRule = New-AzLoadBalancerRuleConfig @lbruleParms
$lbParms = @{
    ResourceGroupName = 'LearningRG'
    Name = 'LearningLB'
    Location = 'eastus'
    SKU = 'Basic'
    FrontendIpConfiguration = $newLBfeIP
    BackendAddressPool = $newLBbepool
    Probe = $newHealthProbe
    LoadBalancingRule = $newLBRule
}
$newLB = New-AzLoadBalancer @lbParms