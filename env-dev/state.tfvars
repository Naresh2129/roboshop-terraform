terraform {
  backend "s3" {
    bucket = "nareshboligorla"
    key    = "dev/terraform.tfstate"
    region = "us-east-1"
  }
}
