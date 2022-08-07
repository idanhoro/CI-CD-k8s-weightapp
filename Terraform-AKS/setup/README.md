<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.2.2 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~> 2.65 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 2.99.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_k8s_production"></a> [k8s\_production](#module\_k8s\_production) | ../modules/kubernetes | n/a |
| <a name="module_k8s_staging"></a> [k8s\_staging](#module\_k8s\_staging) | ../modules/kubernetes | n/a |

## Resources

| Name | Type |
|------|------|
| [azurerm_container_registry.container_registry](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/container_registry) | resource |
| [azurerm_resource_group.kubernetes](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_container_registry_name"></a> [container\_registry\_name](#input\_container\_registry\_name) | Container registry name, unique | `string` | n/a | yes |
| <a name="input_location_zone2"></a> [location\_zone2](#input\_location\_zone2) | Resource group location | `string` | n/a | yes |
| <a name="input_production_kubernetes_cluster_name"></a> [production\_kubernetes\_cluster\_name](#input\_production\_kubernetes\_cluster\_name) | Prodction kubernetes cluster name | `string` | n/a | yes |
| <a name="input_production_nodes_amount"></a> [production\_nodes\_amount](#input\_production\_nodes\_amount) | The amount of nodes for production environment | `number` | n/a | yes |
| <a name="input_resource_group_location"></a> [resource\_group\_location](#input\_resource\_group\_location) | Resource group location | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | Resource group name | `string` | n/a | yes |
| <a name="input_staging_kubernetes_cluster_name"></a> [staging\_kubernetes\_cluster\_name](#input\_staging\_kubernetes\_cluster\_name) | Stagning kubernetes cluster name | `string` | n/a | yes |
| <a name="input_staging_nodes_amount"></a> [staging\_nodes\_amount](#input\_staging\_nodes\_amount) | Amount of nodes for staging evironment | `number` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->