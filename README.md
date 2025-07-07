# TechSpire
This project is built using Terraform to provision and manage Azure infrastructure following a clean, modular structure. The modules are designed for reusability, scalability, and ease of maintenance, adhering to best practices in Infrastructure as Code (IaC).

# 🚀 TechSpire - Infra Setup

This Terraform project (`TechSpire`) automates the provisioning of a complete Azure infrastructure setup, including:

- ✅ Resource Group (RG)
- ✅ Virtual Network (VNet)
- ✅ Subnet
- ✅ Network Interface (NIC)
- ✅ Network Security Group (NSG)
- ✅ Public IP
- ✅ Virtual Machine (VM)

---

## 📁 Folder Structure

![Folder Structure](https://github.com/tripathicle/TechSpire/blob/main/folder_structure.png)


---

## ⚙️ Step-by-Step Setup

### ✅ Step 01 - Update backend configuration in the below mentioned file.
✅ Update the values to be used to backend configuration.  
⚠️ This is a pre-requisite to execute the code.  
❌ If the below resources are not present in the Azure Cloud, the terraform code will ❌ FAIL.

📝 `Techspire/backend-config-techspire.hcl`

```hcl
resource_group_name  = "<your-backend-rg>"          # Example: "rg-backend"
storage_account_name = "<your-storage-account>"     # Example: "storageaccount"
container_name       = "<your-container-name>"      # Example: "storagecontainer"
key                  = "<your-tfstate-key>"          # Example: "a.terraform.tfstate"

```
---
### ✅ Step 02 - Update azure subscription id in the below mentioned file.

✅ Update this with your own subscription ID.

```hcl

📝 `techspire.auto.tfvars`

# ✅ Update this with your own subscription ID.
main_provider_subscription_id = "00000000-0000-0000-00000000"

```
---

### ✅ Step 03 - Update variables in the below mentioned file.

All variables like Resource Group Location, VNet Address, Subnet Address needs to be updated.

```hcl

📝 `techspire.auto.tfvars`

# ✅ Update this with your own Azure region.
root_resource_location        = "East US"

# ✅ Update this with your own VNet address space.
root_vnet_address_space       = ["46.87.0.0/24"]

# ✅ Update this with your own subnet address prefixes.
root_subnet_address_prefixes  = ["46.87.0.0/28"]

```
---
### Step 04 - Following command needs to be executed to initialize the backend.

✅ Run with -backend-config parameter, else the initialize will ask for user input.
```hcl
terraform init -backend-config='backend-config-infra01.hcl'

```

---
### Step 05 - Following commands can be used to proceed with infrastructure creation.


```hcl
terraform validate
terraform plan

```

---

### Step 06 - ❌ DO Not run terraform apply with auto-approve as user input is needed for user prefix.
✅ Only run terrafom apply, as user input is need for dynamically creating resource names.

```hcl
terraform apply

# ❌ Do Not run terraform apply -auto-approve

```
---

## ▶️ Execution

When running `terraform apply`, you'll be prompted to enter an **8-character alphanumeric prefix** for Azure resource naming.

```bash
PS D:\TerraformCode\AzureCode01-InfraSetup\INFRA01> terraform apply

Acquiring state lock. This may take a few moments...

var.user_prefix
  Enter an 8-character alphanumeric prefix for the resource names.

  ✅ Example Valid Inputs:
   >> lion1234 ✅ (valid)
   >> eagle987 ✅ (valid)

  ❌ Invalid Inputs:
   >> 123abcdz ❌ (starts with a number)
   >> abc123   ❌ (less than 8 characters)
   >> abcdefgh9 ❌ (too long)

  Enter a value: lion9876   # ✅ User enters 8-character alphanumeric

```
---

## 📤 Output

Output values displayed to user after successful execution of the code.

```bash
Apply complete! Resources: 8 added, 0 changed, 0 destroyed.

Outputs:

root_output_virtual_machine_password = "lion9876-Pass1@"   # ⚠️ For training purpose only. ❌ Not recommended to use a hardcoded password in production. 🔐
root_output_virtual_machine_username = "lion9876-User1"    # ⚠️ For training purpose only. ❌ Not recommended to use a hardcoded username in production. 🔐
root_output_public_ip                = "192.x.x.x"           # ⚠️ For information purpose only.
root_output_resource_group_name      = "rg-lion9876"        # ✅ Resource group created with 'rg-' as prefix and user input as suffix.
root_output_virtual_machine          = "lion9876-VM"        # ✅ Virtual Machine user input as prefix and '-VM' as suffix.


