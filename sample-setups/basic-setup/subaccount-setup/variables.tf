variable "globalaccount" {
  type        = string
  description = "The subdomain of the global account on SAP BTP"
}

variable "business_unit" {
  type        = string
  description = "Business unit of the project, such as HR, IT, or Sales"
}

variable "region" {
  type        = string
  default     = null
  description = <<-EOT
    The geographical region for a directory. The parameter is optional
    If you set it the possible values are: `EMEA`, `APAC`, `AMER`.
    Default value: `null`.
  EOT
}

variable "subaccount_region" {
  type        = string
  description = "Region of the subaccount."
  validation {
    condition     = lookup(local.valid_region_combination, var.subaccount_region, "INVALID") == var.region
    error_message = "Please provide a fitting subaccount region for the region"
  }
}

variable "costcenter" {
  type        = string
  description = "Cost center to be used for subaccounts"
}

variable "company_name" {
  type        = string
  description = <<-EOT
    Company name to be used for subaccount subdomains. The parameter is optional
    Default value: `null`.
  EOT
  default     = null
}

variable "stage" {
  type        = string
  description = <<-EOT
    Stage of the environment to be setup up.
    Possible values: `Dev`, `Test`, `Prod`, `Shared`.
  EOT
}

variable "subaccount_contacts" {
  type        = list(string)
  description = "Contact persons to be used for subaccount, added as label"
}

variable "parent_id" {
  type        = string
  description = "ID of the parent directory"
  default     = null
}

variable "custom_indentity_provider" {
  type        = string
  description = "Custom IdP to be used for subaccount"
}

variable "additional_entitlements" {
  type        = map(list(string))
  description = "Entitlements to be provided in addition to the standard entitlements"
  default     = {}
}

variable "provision_cf_environment" {
  type        = bool
  description = "Provision Cloud Foundry environment in subaccount"
  default     = true
}

variable "provision_kyma_environment" {
  type        = bool
  description = "Provision Kyma environment in subaccount"
  default     = false
}

variable "kyma_administrators" {
  description = "Users to be assigned as administrators for the Kyma environment."
  type        = list(string)
  default     = null

  validation {
    condition     = var.provision_kyma_environment ? length(var.kyma_administrators) > 0 : true
    error_message = "Kyma administrators must be provided if a Kyma environment is provisioned"
  }
}
