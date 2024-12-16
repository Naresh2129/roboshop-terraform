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