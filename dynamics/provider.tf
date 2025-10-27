terraform {
  backend "s3" {
    bucket         = "remote-state-s3-bucket-terraform" # Replace with your S3 bucket name
    key            = "remote-state-s3-bucket-terraform-key-test" # Path to the state file within the bucket
    region         = "us-east-1" # Must match the region of your S3 bucket
    encrypt        = true # Recommended for data at rest encryption
    use_lockfile = true
    #dynamodb_table = "your-terraform-lock-table" # Optional: For state locking
  }
}

provider "aws" {
  region = "us-east-1" # Specify your desired AWS region
  # You can also configure credentials here, e.g., via access_key and secret_key
  # or rely on environment variables, shared credentials file, or IAM roles.
}
