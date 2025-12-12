# SAP BTP - Directory Setup

This module encapsulates the creation of a directory on SAP BTP following standardized naming conventions.

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.11 |
| <a name="requirement_btp"></a> [btp](#requirement\_btp) | >= 1.18.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_btp"></a> [btp](#provider\_btp) | 1.18.1 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_dir_namings"></a> [dir\_namings](#module\_dir\_namings) | ../sap-btp-naming-conventions-directory | n/a |

## Resources

| Name | Type |
|------|------|
| [btp_directory.self](https://registry.terraform.io/providers/SAP/btp/latest/docs/resources/directory) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_business_unit"></a> [business\_unit](#input\_business\_unit) | Business unit of the project, such as HR, IT, or Sales | `string` | n/a | yes |
| <a name="input_costcenter"></a> [costcenter](#input\_costcenter) | Cost center to be used for subaccounts | `string` | n/a | yes |
| <a name="input_directory_contacts"></a> [directory\_contacts](#input\_directory\_contacts) | Contact persons to be used for the directory, added as label | `list(string)` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | The geographical region for a directory. The parameter is optional<br/>If you set it, the possible values are: `EMEA`, `APAC`, `AMER`.<br/>Default value: `null`. | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_business_unit"></a> [business\_unit](#output\_business\_unit) | Business unit of the project, such as HR, IT, or Sales |
| <a name="output_costcenter"></a> [costcenter](#output\_costcenter) | Cost center to be used for subaccounts |
| <a name="output_directory_id"></a> [directory\_id](#output\_directory\_id) | Technical ID of the directory |
| <a name="output_directory_name"></a> [directory\_name](#output\_directory\_name) | The name of the directory |
| <a name="output_region"></a> [region](#output\_region) | The geographical region for a directory. The parameter is optional |
