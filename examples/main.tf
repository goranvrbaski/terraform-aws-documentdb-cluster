provider "aws" {
  region = "eu-west-1"
}

module "pritunl-docdb-cluster" {
  source             = "../"
  cluster_name       = "pritunl"
  master_username    = "pritunl"
  master_password    = "SuperCoolPassword123"
  availability_zones = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]
  subnet_group_ids   = ["subnet-0e850eb742a6603fe", "subnet-0af42ab0203c31963", "subnet-0dca788fac5b76a63"]
  security_group_ids = ["sg-056b779af0e7e0129"]
}