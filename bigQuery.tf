module "bigQuery" {
  source           = "./bigQuery"
  BigQuery_name    = "test1"
  query_location   = "US"
  query_role       = "OWNER"
  serv             = module.srvacc_vm.email
}

module "bigQuery2" {
  source           = "./bigQuery"
  BigQuery_name    = "test2"
  query_location   = "US"
  query_role       = "OWNER"
  serv             = module.srvacc_vm.email
}

module "bigQuery3" {
  source           = "./bigQuery"
  BigQuery_name    = "test3"
  query_location   = "US"
  query_role       = "OWNER"
  serv             = module.srvacc_vm.email
}