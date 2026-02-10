# SAP BTP - Cloud Foundry Runtime Setup

This module encapsulates the creation of a Cloud Foundry runtime in a subaccount on SAP BTP.

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.11 |
| <a name="requirement_btp"></a> [btp](#requirement\_btp) | >= 1.19.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_btp"></a> [btp](#provider\_btp) | >= 1.19.0 |
| <a name="provider_null"></a> [null](#provider\_null) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [btp_subaccount_environment_instance.self](https://registry.terraform.io/providers/SAP/btp/latest/docs/resources/subaccount_environment_instance) | resource |
| [null_resource.cache_target_environment](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |
| [btp_subaccount_environments.all](https://registry.terraform.io/providers/SAP/btp/latest/docs/data-sources/subaccount_environments) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cf_org_name"></a> [cf\_org\_name](#input\_cf\_org\_name) | Name of the Cloud Foundry org. | `string` | n/a | yes |
| <a name="input_instance_name"></a> [instance\_name](#input\_instance\_name) | Name of the Cloud Foundry runtime instance. | `string` | n/a | yes |
| <a name="input_plan_name"></a> [plan\_name](#input\_plan\_name) | Desired service plan for the Cloud Foundry runtime instance. | `string` | `"standard"` | no |
| <a name="input_subaccount_id"></a> [subaccount\_id](#input\_subaccount\_id) | ID of the subaccount where the Cloud Foundry runtime is created. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cf_api_url"></a> [cf\_api\_url](#output\_cf\_api\_url) | The Cloud Foundry API URL |
| <a name="output_cf_org_id"></a> [cf\_org\_id](#output\_cf\_org\_id) | The Cloud Foundry org ID |
