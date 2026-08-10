terraform {
  required_version = ">= 1.0.0"

  backend "azurerm" {
    resource_group_name  = "example-resources"
    storage_account_name = "testingazurestaging54321"
    container_name       = "myblobs"
    key                  = "terraform.tfstate"
  }
}
