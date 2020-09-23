$appParms = @{
    ResourceGroupName = "LearningRG"
    Name = "LearningApp-test"
    Location = "East US"
    AppServicePlan = "LearningServicePlan"
}
$newApp = New-AzWebApp @appParms