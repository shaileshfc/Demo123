terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "eu-central-1"
}

terraform {
  backend "s3" {
    bucket = "awsterraform123"
    key    = "TF123/terraform.tfstate"
    region = "eu-central-1"
  }
}

resource "aws_s3_bucket" "my-test-bucket786" {
  bucket = "my-test-bucket786"
}