provider "aws" {
  region = var.aws_region
}

terraform {
  backend "s3" {
    bucket = "jenkins-dev-surya"
    key    = "functions.tfstate"
    region = "us-east-1"
  }
}
