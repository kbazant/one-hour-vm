# Authenticate to Azure using the managed identity
Connect-AzAccount -Identity

# Retrieve the stored credential
$cred = Get-AutomationPSCredential -Name 'cred'

if ($null -eq $cred) {
    throw "Could not retrieve the credential asset. Ensure that the credential asset name is correct."
}

# Create the VM
New-AzVm `
 -ResourceGroupName 'one-hour-vm' `
 -Name 'one-hour-vm' `
 -Location 'polandcentral' `
 -Image 'MicrosoftWindowsServer:WindowsServer:2022-datacenter-azure-edition:latest' `
 -Size 'Standard_B2s' `
 -VirtualNetworkName 'one-hour-vm' `
 -SubnetName 'one-hour-vm' `
 -SecurityGroupName 'one-hour-vm' `
 -PublicIpAddressName 'one-hour-vm' `
 -OpenPorts 80,3389 `
 -Credential $cred