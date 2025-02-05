provider "aws" {
  region = var.aws_region
}

terraform {
  backend "s3" {
    bucket = "jenkins-prod-surya"
    key    = "functions.tfstate"
    region = "us-east-1"
  }
}
