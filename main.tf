terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

# Intentionally non-compliant: the AWS provider is 6.x, outside the approved
# range in provider-version.policy.hcl.
resource "aws_s3_bucket" "demo" {
  bucket = "techxchange-supply-chain-demo"
}
