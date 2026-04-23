required_providers {
  null = {
    source  = "hashicorp/null"
    version = "~> 3.2.3"
  }
}

provider "null" "this" {
  
}

component "infra" {
  source = "./"
  inputs = {
  }

  providers = {
    tfcoremock = provider.null.this
  }
}