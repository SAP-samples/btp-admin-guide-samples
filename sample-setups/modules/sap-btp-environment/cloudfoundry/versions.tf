terraform {
  required_version = ">= 1.11"
  required_providers {
    btp = {
      source  = "SAP/btp"
      version = ">= 1.19.0"
    }
  }
}
