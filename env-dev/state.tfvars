terraform {
  backend "s3" {
    bucket = "tf-state-naresh"
    key    = "dev/terraform.tfstate"
    region = "us-east-1"
  }
}
