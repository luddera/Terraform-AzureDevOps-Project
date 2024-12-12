terraform {
  backend "azurerm" {
    resource_group_name  = "tfvmex-resources" # Can be passed via -backend-config="resource_group_name=<resource group name>"in theinitcommand.     
    storage_account_name = "saluddera"                     # Can be passed via-backend-config="storage_account_name=<storage account name>" in the init command.
    container_name       = "prod-tfstate"                      # Can be passed via -backend-config="container_name=<container name>"in theinitcommand.     
    key                  = "prod.terraform.tfstate"       # Can be passed via-backend-config="key=<blob key name>" in the init command.
  }
}