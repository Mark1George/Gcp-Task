module "GKE" {
  source              = "./GKE"
  cluser_name         = "mycluster"
  cluser_region       = "us-central1"
  node_location1      = "us-central1-c" 
  node_location2      = "us-central1-f"
  machine_type        = "e2-medium"
  vpc                 = module.vpc.myvpc_selflink
  subnet              = module.vpc.subnet_selflink
  subnet_cider        = module.vpc.subnet_cider
  masternode_cidr     = "192.168.1.0/28"
  node_number         =  "2"
  disk_size           = "100"
  svacc               = module.srvacc_GKE.email
}



