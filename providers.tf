terraform {
  required_providers {
    tfe = {
      version = "~> 0.48.0"
    }
  }
}

provider "tfe" {
    version = "~> 0.48.0"
    # token = var.token
}