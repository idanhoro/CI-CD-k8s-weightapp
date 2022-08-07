variable "resource_group_name" {
  type        = string
  description = "Resource group name"
}
variable "resource_group_location" {
  type    = string
  description = "Resource group location"
}
variable "location_zone2" {
  type    = string
  description = "Resource group location"
}


variable "staging_kubernetes_cluster_name" {
  type        = string
  description = "Stagning kubernetes cluster name"
}
variable "production_kubernetes_cluster_name" {
  type        = string
  description = "Prodction kubernetes cluster name"
}

variable "container_registry_name" {
  type        = string
  description = "Container registry name, unique"
}

variable "staging_nodes_amount" {
    type = number
    description = "Amount of nodes for staging evironment"
}
variable "production_nodes_amount" {
    type = number
    description = "The amount of nodes for production environment"
}