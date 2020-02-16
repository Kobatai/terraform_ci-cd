terraform {
  backend "s3" {
    bucket = "container-era-terraform-bd-image"
    key    = "terraform_ci-cd/iam/terraform.tfstate"
    region = "ap-northeast-1"
  }
}

provider "aws" {
  region = "ap-northeast-1"
}
