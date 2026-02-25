provider "aws" {
  region = "us-east-1"
}

resource "aws_ecr_repository" "ecommerce" {
  name = "ecommerce-app"

  image_scanning_configuration {
    scan_on_push = true
  }

  image_tag_mutability = "IMMUTABLE"
}
