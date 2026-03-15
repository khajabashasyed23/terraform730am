terraform {
  backend "s3" {
    bucket         = "my-terraform-state-unique-id-syed"
    key            = "global/s3/terraform.tfstate"
    region         = "us-east-1"
    # Use S3 native locking (Terraform 1.10+) or DynamoDB for older versions
    use_lockfile   = true 
  }
}