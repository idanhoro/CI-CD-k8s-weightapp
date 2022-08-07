variable "resource_group_name" {
  type        = string
  description = "Resource group name"
}
variable "resource_group_location" {
  type    = string
  description = "Resource group location"
}

variable "kubernetes_cluster_name" {
  type        = string
  description = "The kubernetes clusters namme"
}

variable "container_registry_name" {
  type        = string
  description = "Container registry name, unique"
}

variable "nodes_amount" {
    type = number
    description = "Amount of nodes"
}
variable "scope" {
    type = string
    description = "containers id"
}