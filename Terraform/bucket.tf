module "buckt1" {
  source           = "./bucket"
  bucket_name      = "bucketprojectvois1"
  bucket_sclass    = "STANDARD"
  role_bucket      = "roles/storage.objectViewer"
  bucket_location  = "US"
  member           = module.srvacc_vm.member
}

module "buckt2" {
  source           = "./bucket"
  bucket_name      = "bucketprojectvois2"
  bucket_sclass    = "STANDARD"
  role_bucket      = "roles/storage.objectViewer"
  bucket_location  = "US"
  member           = module.srvacc_vm.member  
}


module "buckt3" {
  source           = "./bucket"
  bucket_name      = "bucketprojectvois3"
  bucket_sclass    = "STANDARD"
  role_bucket      = "roles/storage.objectViewer"
  bucket_location  = "US"
  member           = module.srvacc_vm.member  
}


