terraform {
  backend "s3" {
    bucket         = "my-portfolio-tf-state-ss-2026"
    key            = "global/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-state-lock"
  }
}