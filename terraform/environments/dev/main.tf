provider "aws" {
  region = "us-east-1"
}

resource "aws_ecr_repository" "ecommerce" {
  name = "ecommerce-app"
}
