module "components" {
  source = "https://github.com/Naresh2129/tf-module-vpc.git"

  for_each = var.vpc
  cidr = each.value["cidr"]
  subnets = each.value["subnets"]

}

output "vpc" {
  value = module.vpc
}