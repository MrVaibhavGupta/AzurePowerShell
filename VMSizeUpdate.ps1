$vm = Get-AzVM -ResourceGroupName LearningRG -VMName LearningVM
$vm.HardwareProfile.VmSize = "<newVMsize>"
Update-AzVM -VM $vm -ResourceGroupName LearningRG