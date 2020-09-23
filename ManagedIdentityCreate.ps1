$identityParms = @{
    ResourceGroupName = "LearningRG"
    Location = "East US"
    Name = "LearningIdentity"
}
$newIdentity = New-AzUserAssignedIdentity @identityParms