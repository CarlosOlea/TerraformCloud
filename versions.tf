terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.23.0"
    }
  }
  required_version = ">= 0.14.0"
}

provider "aws" {
  region     = "us-east-1"
  //profile = "default"
  access_key = "AKIAQFOK4JNRV46VPH53"
  secret_key = "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"
}
