terraform {
   cloud {
    organization = "jc3tierproject"
    hostname = "app.terraform.io" # Optional; defaults to app.terraform.io

    workspaces {
      name = "3-tier-project"
    }
  }
  required_version = ">= 0.15"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.28"
    }
    cloudinit = {
      source  = "hashicorp/cloudinit"
      version = "~> 2.1"
    }
  }
}