vpc={
  main ={
    cidr = "10.0.0.0/16"
    subnets = {
      public = {
        public1 = { cidr = "10.1.0.0/24", az = "us-east-1a" }
        public2 = { cidr = "10.2.0.0/24", az = "us-east-1b" }
      }
      app = {
        app1 = { cidr = "10.3.0.0/24", az = "us-east-1a" }
        app2 = { cidr = "10.4.0.0/24", az = "us-east-1b" }
      }
      db = {
        db1 = { cidr = "10.5.0.0/24", az = "us-east-1a" }
        db2 = { cidr = "10.6.0.0/24", az = "us-east-1b" }
      }
    }
  }
}
default_vpc_id = "vpc-0e30da595cec3624a"
default_vpc_cidr = "172.31.0.0/16"
default_vpc_route_table_id = "rtb-00f11a43a99b592ba"

tags = {
  company_name = "ABC TECH"
  business_unit = "e-commerce"
  project_name = "roboshop"
  cost_center = "e-comm _rs"
  created_by = "terraform"
}
env = "dev"