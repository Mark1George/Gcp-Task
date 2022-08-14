output "myvpc_selflink" {
    value = google_compute_network.vpc.self_link
}

output "subnet_selflink" {
  value =  google_compute_subnetwork.subnet.self_link
}

output "subnet_name" {
   value =  google_compute_subnetwork.subnet.name
}

output "subnet_cider" {
    value = google_compute_subnetwork.subnet.ip_cidr_range
  
}