$serviceplanParms = @{
    ResourceGroupName = "LearningRG"
    Name = "LearningServicePlan"
    Location = "East US"
}
$newServicePlan = New-AzAppServicePlan @serviceplanParms
