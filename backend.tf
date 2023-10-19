terraform {
  backend "s3" {
    bucket = "kninfra"
    key    = "kninfra/terraform.tfstate"
    region = "us-east-1"
  }
}

