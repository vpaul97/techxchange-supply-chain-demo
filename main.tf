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

# Intentionally non-compliant:
# - the AWS provider is 6.x, outside the approved range in provider-version.policy.hcl
# - the module comes from the public registry, so it fails module-source.policy.hcl
module "bucket" {
  source  = "terraform-aws-modules/s3-bucket/aws"
  version = "~> 4.0"

  bucket = "techxchange-supply-chain-demo"
}
