terraform {
  required_version = ">= 1.5.0"  # Ensures Terraform version is 1.5.0 or newer

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"  # Ensures AWS provider version is 5.x
    }
  }

  backend "s3" {  # If using S3 for state storage, configure it here
    bucket         = "my-cloud-storage-location"  # Replace with your S3 bucket name
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock-table"  # Optional for state locking
    encrypt        = true
  }
}

# AWS Provider Configuration
provider "aws" {
  region = "us-east-1"  # Change to your preferred region
}
