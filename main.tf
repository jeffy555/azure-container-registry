resource "azurerm_resource_group" "rg" {
  name     = "${var.resource_group}"
  location = "${var.location}"
}

resource "azurerm_storage_account" "sa" {
  name                     = "${var.registry_storage_account}"
  resource_group_name      = "${azurerm_resource_group.rg.name}"
  location                 = "${azurerm_resource_group.rg.location}"
  account_tier             = "${var.account_tier}"
  account_replication_type = "${var.account_replication_type}"
}

resource "azurerm_container_registry" "cr" {
  name                = "${var.container_registry_name}"
  resource_group_name = "${azurerm_resource_group.rg.name}"
  location            = "${azurerm_resource_group.rg.location}"
  admin_enabled       = true
  sku                 = "${var.sku}"
  storage_account_id  = "${azurerm_storage_account.rg.id}"
}
