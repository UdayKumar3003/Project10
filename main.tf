terraform {
  backend "s3" {
    bucket         = "my-cloud-storage-location"  # Replace with your actual S3 bucket name
    key            = "terraform.tfstate"          # State file path in the bucket
    region         = "us-east-1"                  # Use your selected AWS region
    dynamodb_table = "terraform-lock-table"       # Enables state locking
    encrypt        = true                         # Encrypts the state file
  }
}