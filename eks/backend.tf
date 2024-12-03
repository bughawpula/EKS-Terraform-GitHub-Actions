terraform {
  #required_version = "~> 1.9.3"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.49.0"
    }
  }
  backend "s3" {
    bucket         = "dev-s3-bughawpula"
    region         = "us-east-1"
    key            = "apsg073198"
    dynamodb_table = "dev-dynamodb-bughawpula"
    encrypt        = true
  }
}

provider "aws" {
  region  = var.aws-region
}
