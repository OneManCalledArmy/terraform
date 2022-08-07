terraform {
  backend "s3" {
    bucket = "tfb1"
    key    = "state/terraform.tfstate"
    region = "eu-central-1"
  }
}