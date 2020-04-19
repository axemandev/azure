# New resource group
New-AzResourceGroup -Name "TestRG-002" -Location "Canada East"

# New resource deployment
$blankFile = "../templates/emptytemplate.json"

New-AzResourceGroupDeployment `
    -Name TestBlankTemplate `
    -ResourceGroupName TestRG-002 `
    -TemplateFile $blankFile

# Delete resource group
Remove-AzResourceGroup -Name "TestRG-002"
