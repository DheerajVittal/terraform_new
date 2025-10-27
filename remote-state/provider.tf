terraform {
   required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }

# Provide S3 Bucket remote state details
 backend "s3" {
   bucket = "remote-state-s3-bucket-terraform"
   key    = "remote-state-s3-key"
   region = "us-east-1"
   encrypt = true
   use_lockfile = true
  }
}

# Configure the AWS Provider
 provider "aws" {
   region = "us-east-1"
} 