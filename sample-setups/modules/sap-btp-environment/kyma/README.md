# SAP BTP - Kyma Runtime Setup

This module encapsulates the creation of a Kyma runtime in a subaccount on SAP BTP. The configuration is a basic setup. In a real-world scenario, you typically customize the setup further with the available parameters like machine type, depending on the stage of the environment (development, test, production). For details, see [Provisioning and Updating Parameters in the Kyma Environment](https://help.sap.com/docs/btp/sap-business-technology-platform/provisioning-and-update-parameters-in-kyma-environment).

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.11 |
| <a name="requirement_btp"></a> [btp](#requirement\_btp) | >= 1.18.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_btp"></a> [btp](#provider\_btp) | >= 1.18.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [btp_subaccount_entitlement.kymaruntime](https://registry.terraform.io/providers/SAP/btp/latest/docs/resources/subaccount_entitlement) | resource |
| [btp_subaccount_environment_instance.kymaruntime](https://registry.terraform.io/providers/SAP/btp/latest/docs/resources/subaccount_environment_instance) | resource |
| [btp_regions.all](https://registry.terraform.io/providers/SAP/btp/latest/docs/data-sources/regions) | data source |
| [btp_subaccount.this](https://registry.terraform.io/providers/SAP/btp/latest/docs/data-sources/subaccount) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_instance_name"></a> [instance\_name](#input\_instance\_name) | Name of the Kyma runtime instance. | `string` | n/a | yes |
| <a name="input_kyma_administrators"></a> [kyma\_administrators](#input\_kyma\_administrators) | Users to be assigned as administrators. | `list(string)` | `[]` | no |
| <a name="input_oidc"></a> [oidc](#input\_oidc) | Custom OpenID Connect IdP configuration to authenticate users in your Kyma runtime. | <pre>object({<br/>    # the URL of the OpenID issuer (use the HTTPS schema)<br/>    issuer_url = string<br/><br/>    # the client ID for the OpenID client<br/>    client_id = string<br/><br/>    #the name of a custom OpenID Connect claim for specifying user groups<br/>    groups_claim = string<br/><br/>    # the list of allowed cryptographic algorithms used for token signing. The allowed values are defined by RFC 7518.<br/>    signing_algs = set(string)<br/><br/>    # the prefix for all usernames. If you don't provide it, username claims other than “email” are prefixed by the issuerURL to avoid clashes. To skip any prefixing, provide the value as -.<br/>    username_prefix = string<br/><br/>    # the name of a custom OpenID Connect claim for specifying a username<br/>    username_claim = string<br/>  })</pre> | `null` | no |
| <a name="input_plan_name"></a> [plan\_name](#input\_plan\_name) | Desired service plan for the Kyma runtime instance.<br/>If not provided, it will be set to the default value of the region. | `string` | `null` | no |
| <a name="input_subaccount_id"></a> [subaccount\_id](#input\_subaccount\_id) | ID of the subaccount where the Kyma runtime is created. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_kyma_dashboard_url"></a> [kyma\_dashboard\_url](#output\_kyma\_dashboard\_url) | The URL to the Kyma dashboard |
| <a name="output_kyma_kubeconfig_url"></a> [kyma\_kubeconfig\_url](#output\_kyma\_kubeconfig\_url) | The URL to the Kubeconfig file for the Kyma runtime |
