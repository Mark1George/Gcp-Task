module "instance" {
  source           = "./instance"
  instance_name    = "myinstance"
  instance_zone    = "us-central1-a"
  instance_type    = "n1-standard-1"
  image            = "ubuntu-2004-focal-v20220419"
  instance_network = module.vpc.myvpc_selflink
  subnet_name      = module.vpc.subnet_name
  svacc            = module.srvacc_vm.email
}

