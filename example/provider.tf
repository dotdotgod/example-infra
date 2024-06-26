terraform {
  cloud {
    organization = "dotdot_learn"
    workspaces { name = "example-infra" }
  }
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.42.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}