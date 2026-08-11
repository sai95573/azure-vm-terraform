resource "azurerm_storage_account" "example" {
  name                          = "testingazurestaging54321"
  resource_group_name           = azurerm_resource_group.example.name
  location                      = azurerm_resource_group.example.location
  account_tier                  = "Standard"
  account_replication_type      = "LRS"
  public_network_access_enabled = true

  blob_properties {
    versioning_enabled = true
  }

  tags = {
    environment = "staging"
  }
}

resource "azurerm_storage_container" "example" {
  name                  = "myblobs"
  storage_account_id    = azurerm_storage_account.example.id
  container_access_type = "private"
}