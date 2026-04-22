terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "~> 3.2.3"
    }
  }
}

resource "random_bytes" "jwt_secret" {
  length = 14
}

resource "random_string" "random" {
  length           = resource.random_bytes.jwt_secret.length
  special          = true
  override_special = "/@£$"
}
