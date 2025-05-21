<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_helm"></a> [helm](#provider\_helm) | 2.17.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [helm_release.light](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_app_host"></a> [app\_host](#input\_app\_host) | The host address for the application | `string` | `"0.0.0.0"` | no |
| <a name="input_app_port"></a> [app\_port](#input\_app\_port) | The port on which the application runs | `number` | `9999` | no |
| <a name="input_app_replicas"></a> [app\_replicas](#input\_app\_replicas) | Number of application replicas | `number` | `3` | no |
| <a name="input_client_id"></a> [client\_id](#input\_client\_id) | The client ID for Keycloak | `string` | `"kubernetes"` | no |
| <a name="input_client_secret"></a> [client\_secret](#input\_client\_secret) | The client secret for Keycloak | `string` | n/a | yes |
| <a name="input_cluster_api_address"></a> [cluster\_api\_address](#input\_cluster\_api\_address) | The API address of the cluster | `string` | n/a | yes |
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | The name of the cluster | `string` | n/a | yes |
| <a name="input_config_context"></a> [config\_context](#input\_config\_context) | Set context name from kubeconf here | `string` | n/a | yes |
| <a name="input_config_path"></a> [config\_path](#input\_config\_path) | Set path to k8s contexts file | `string` | `"~/.kube/config"` | no |
| <a name="input_helm_repo"></a> [helm\_repo](#input\_helm\_repo) | Set helm repository name or url here | `string` | `"https://yazhivotnoe.github.io/charts/"` | no |
| <a name="input_image_name"></a> [image\_name](#input\_image\_name) | The name of the image | `string` | `"yazhivotnoe/light"` | no |
| <a name="input_image_tag"></a> [image\_tag](#input\_image\_tag) | The tag of the image | `string` | `"0.0.1"` | no |
| <a name="input_ingress_enable"></a> [ingress\_enable](#input\_ingress\_enable) | Enable or disable ingress | `bool` | `true` | no |
| <a name="input_ingress_host_name"></a> [ingress\_host\_name](#input\_ingress\_host\_name) | The host name for ingress | `string` | n/a | yes |
| <a name="input_jwt_secret"></a> [jwt\_secret](#input\_jwt\_secret) | n/a | `string` | `"n3X9QIPKn5ZfMFJq9i2p"` | no |
| <a name="input_keycloak_host"></a> [keycloak\_host](#input\_keycloak\_host) | The host for Keycloak | `string` | n/a | yes |
| <a name="input_keycloak_realm"></a> [keycloak\_realm](#input\_keycloak\_realm) | The realm for Keycloak | `string` | `"master"` | no |
| <a name="input_light_chart"></a> [light\_chart](#input\_light\_chart) | Set light chart name here | `string` | `"light"` | no |
| <a name="input_light_create_namespace"></a> [light\_create\_namespace](#input\_light\_create\_namespace) | Set light create namespace | `bool` | `true` | no |
| <a name="input_light_deployment_namespace"></a> [light\_deployment\_namespace](#input\_light\_deployment\_namespace) | Set light deployment namespace | `string` | `"light"` | no |
| <a name="input_light_release_name"></a> [light\_release\_name](#input\_light\_release\_name) | Set light release name | `string` | `"light"` | no |
| <a name="input_service_enable"></a> [service\_enable](#input\_service\_enable) | Enable or disable the service | `bool` | `true` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->