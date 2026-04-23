required_providers {
  random = {
    source  = "hashicorp/random"
    version = "3.8.1"
  }
}

provider "random" "this" {
  
}

component "infra" {
  source = "./"
  inputs = {
  }

  providers = {
    random = provider.random.this
  }
}