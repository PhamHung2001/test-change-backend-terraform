terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.87"
    }
  }

  backend "s3" {
    region         = "ap-southeast-1"
    encrypt        = true
    bucket         = "mandai-terraform-state-19"
    key            = "infra/b2b-crm/dev-app-infra/terraform.state"
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  region = "ap-southeast-1"
}
