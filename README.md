## This module will provision an Azure Container Registry (ACR) 

## Usage

```
module acr {
  source                   = "git@github.com:cds-snc/azure-container-registry.git"
  location                 = "eastus"
  resource_group           = "Kubernetes"
  registry_storage_account = "containerregistrystorage"
  account_replication_type = "GRS"
  container_registry_name  = "MyACR"
  account_tier             = "Standard"
  sku                      = "Standard"
}
```

