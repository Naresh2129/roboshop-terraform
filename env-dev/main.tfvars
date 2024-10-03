vpc = {
  main = {
    cidr = "10.0.0.0/16"
    subnets = {
      public = {
        public1 = { cidr = "10.0.1.0/24", az = "us-east-1a" }
        public2 = { cidr = "10.0.2.0/24", az = "us-east-1b" }
      }

      app = {
        app1 = {cidr = "10.0.3.0/24", az = "us-east-1a"}
        app2 = {cidr = "10.0.4.0/24", az = "us-east-1b"}

      }
      db = {
        db1 = {cidr = "10.0.5.0/24", az = "us-east-1a"}
        db2 = {cidr = "10.0.6.0/24", az = "us-east-1b"}

      }


    }
  }
}

 default_vpc_id =  "213456789213" #we need to put default vpc id
default_vpc_cidr = "213456625" #default vpc cidr
default_vpc_route_table_id = "23156565" # default vpc route table id

