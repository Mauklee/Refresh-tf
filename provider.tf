terraform {
  required_providers {
    # random = {
    #   source = "hashicorp/random"
    #   version = "3.6.3"
    # }
    aws = {
      source = "hashicorp/aws"
      version = "5.82.2"
    }
  }
}

provider "random" {
  # Configuration options
}

provider "aws" {
  region = "us-east-1"
  profile = "tf-apply"
}