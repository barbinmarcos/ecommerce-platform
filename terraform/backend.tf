terraform {
  backend "s3" {
    bucket         = "ecommerce-platform-tf-state-fenix"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
  }
}
