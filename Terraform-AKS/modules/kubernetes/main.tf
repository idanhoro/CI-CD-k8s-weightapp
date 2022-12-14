# Create Kubernetes cluster cluster
resource "azurerm_kubernetes_cluster" "kubernetes" {
  name                = var.kubernetes_cluster_name
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name
  dns_prefix          = "${var.kubernetes_cluster_name}-app"
  role_based_access_control_enabled = true
  
  identity {
    type = "SystemAssigned"
  }

  default_node_pool {
    name       = "agentpool"
    node_count = var.nodes_amount
    vm_size    = "Standard_B2s"
  }


  network_profile {
    load_balancer_sku = "Standard"
    network_plugin    = "kubenet"
  }

}

# add the role to the identity the kubernetes cluster was assigned
resource "azurerm_role_assignment" "azurerm_role_assignment" {
  scope                = var.scope
  role_definition_name = "AcrPull"
  principal_id         = azurerm_kubernetes_cluster.kubernetes.kubelet_identity[0].object_id
}