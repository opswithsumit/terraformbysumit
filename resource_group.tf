

resource "azurerm_resource_group" "dev" {
  name     = var.rcb
  location = "West Europe"
}

resource "azurerm_resource_group" "test" {
  name     = var.csk
  location = "West Europe"
}
data "azurerm_resource_group" "demodata" {
  name = "rg-demo-dev"
  
}
resource "azurerm_storage_account" "example" {
  name                     = "storagedemodev123"
  resource_group_name      = data.azurerm_resource_group.demodata.name
  location                 = data.azurerm_resource_group.demodata.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
resource "azurerm_storage_account" "example1" {
  name                     = "storagedemodev1234"
  resource_group_name      = "aam"
  location                 = "west us"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

