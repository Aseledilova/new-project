provider "aws" {
  region = "us-east-2"
}

terraform {
  required_version = ">= 0.12.0"
}

terraform {
  backend "s3" {
    bucket = "terr-s3"
    dynamodb_table = "table"
    key = "new-project"
    region = "us-east-2"
  }
}
