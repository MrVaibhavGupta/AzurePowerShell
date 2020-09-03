$poldef = Get-AzPolicyDefinition | Where-Object {$_.Properties.DisplayName -eq "Audit virtual machines without disaster recovery configured"}
$polassParms = @{
    Scope = "LearningRG"
    Name = "LearningPolicyAssignment"
    PolicyDefinition = $poldef
}
$newPolicyAssign = New-AzPolicyAssignment @polassParms