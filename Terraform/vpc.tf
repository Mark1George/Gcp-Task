module "vpc" {
  source           = "./vpc"
  vpc_name         = "vpc"
  sub-name         = "firstsub"
  subnet_cidr      = "10.10.0.0/24"
  sub_region       = "us-central1"
  firewall-name    = "firewall"
}

