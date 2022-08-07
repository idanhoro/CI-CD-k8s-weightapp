# Create Kubernetes cluster Resource group.
resource "azurerm_resource_group" "kubernetes" {
  name     = var.resource_group_name
  location = var.resource_group_location
}
# Create Kubernetes cluster Container registry.
resource "azurerm_container_registry" "container_registry" {
  name                = var.container_registry_name
  resource_group_name = azurerm_resource_group.kubernetes.name
  location            = azurerm_resource_group.kubernetes.location
  sku                 = "Basic"
  admin_enabled       = true
}

# Create Kubernetes cluster Staging environment.
module "k8s_staging" {
  source = "../modules/kubernetes"
  resource_group_location=var.resource_group_location
  kubernetes_cluster_name=var.staging_kubernetes_cluster_name
  container_registry_name=var.container_registry_name
  resource_group_name=azurerm_resource_group.kubernetes.name
  nodes_amount=var.staging_nodes_amount
  scope=azurerm_container_registry.container_registry.id
}

# Create Kubernetes cluster Production environment
module "k8s_production" {
  source = "../modules/kubernetes"
  resource_group_location=var.location_zone2
  kubernetes_cluster_name=var.production_kubernetes_cluster_name
  container_registry_name=var.container_registry_name
  resource_group_name=azurerm_resource_group.kubernetes.name
  nodes_amount=var.production_nodes_amount
  scope=azurerm_container_registry.container_registry.id
}