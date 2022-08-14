module "srvacc_vm" {
  source           = "./serviceAcc"
  acc_id           = "vmaccs"
  acc_name         = "vm"
  acc_role         = "roles/container.admin"
}


module "srvacc_GKE" {
  source           = "./serviceAcc"
  acc_id           = "gkenodes"
  acc_name         = "gke"
  acc_role         = "roles/storage.objectViewer"
}