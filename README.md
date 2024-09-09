# Virtual Machine Automation with PowerShell

This project automates the creation, deletion, and recreation of an Azure VM. The VM runs from 9 AM to 10 AM CET every weekday.

## Steps

1. **Prepare PowerShell Scripts:**

   - `create-vm.ps1`: Creates the VM and related resources.
   - `delete-vm.ps1`: Deletes the VM resource group.

2. **Create an Automation Account.**

3. **Create and Publish Runbooks:**

   - `create-vm` Runbook
   - `delete-vm` Runbook

4. **Update Access Control (IAM):**

   - Assign the contributor role to the `vm-automation` resource group.

5. **Create VM Credential:**

   - Add `cred` in the Automation Account.

6. **Create Schedules:**

   - `create-vm` Schedule:
     - Start: Monday, 09:00 CET
     - Recurrence: Daily
     - Expiration: Friday, 09:01 CET
   - `delete-vm` Schedule:
     - Start: Monday, 10:00 CET
     - Recurrence: Daily
     - Expiration: Friday, 10:01 CET

7. **Link Schedules to Runbooks:**
   - Ensure runbooks execute at the specified times.

## Azure Services

- **Azure Automation:**

  - Automation Account
  - Runbooks
  - Schedules

- **Azure VM and Related Resources:**
  - Network Interface
  - Network Security Group
  - Public IP Address
  - Virtual Network
  - Disk

## Technologies

- **PowerShell Scripts:** For VM lifecycle management.
- **Azure PowerShell Modules (Az):** For interacting with Azure resources.
