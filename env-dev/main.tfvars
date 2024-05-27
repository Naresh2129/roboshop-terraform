vpc = {
  main = {
    cidr = "10.0.0.0/16"
    subnets = {
      public = {
        public1 = { cidr = "10.0.0.0/24", az = "us-east-1a" }
        public2 = { cidr = "10.0.1.0/24", az = "us-east-1b" }
      }
      app = {
        app1 = { cidr = "10.0.2.0/24", az = "us-east-1a" }
        app2 = { cidr = "10.3.0.0/24", az = "us-east-1a" }
      }
      db = {
        db1 = { cidr = "10.0.4.0/24", az = "us-east-1a" }
        db2 = { cidr = "10.0.5.0/24", az = "us-east-1a" }
      }
    }
  }
}


default_vpc_id = "vpc-0e30da595cec3624a"
default_vpc_cidr = "172.31.0.0/16"
default_vpc_route_table_id = "rtb-00f11a43a99b592ba"

tags = {
  company_name = "ABCTech"
  business_unit = "Ecommerce"
  project_name = "roboshop"
  cost_center = "ecom_rs"
  created_by  = "terraform"
 }

env = "dev"

alb = {
  public = {
    internal = false
    lb_type = "application"
    sg_ingress_cidr = ["0.0.0.0/0"]
    sg_port = 80
  }

  private = {
    internal = true
    lb_type = "application"
    sg_ingress_cidr = ["172.31.0.0/16", "10.0.0.0/16"]
    sg_port = 80
  }
}

docdb = {
  main = {
    backup_retention_period = 5
    preffered_backup_window = "07:00-09:00"
    skip_final_snapshot     = true
    engine_version          = "4.0.0"

  }
}