module "vpc" {
  source = "git::https://github.com/Naresh2129/tf-module-vpc.git"
  for_each = var.vpc
  cidr = each.value["cidr"]
  subnets = each.value["subnets"]

  module"subnets"
     source = "./subnets"
     vpc_id = var.aws_vpc.main.id
}