terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.41.0"
    }
  }

  backend "s3" {
    bucket               = "terraform-state-bucket-007"
    key                  = "terraform.tfstate"
    workspace_key_prefix = "gaming-on-aws/workspaces"
    region               = "us-east-1"
    dynamodb_table       = "terraform-state-lock"
    encrypt              = true
  }
}

provider "aws" {
  region = "me-south-1"
}