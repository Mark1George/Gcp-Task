
resource "google_container_cluster" "app_cluster" {
  name     = "${var.cluser_name}"
  location = "${var.cluser_region}"

  remove_default_node_pool = true
  initial_node_count       = 1
  
  
  node_locations = [var.node_location1 , var.node_location2 ] 
  

  ip_allocation_policy {
   
  }
  network    = var.vpc
  subnetwork = var.subnet

  logging_service    = "logging.googleapis.com/kubernetes"
  monitoring_service = "monitoring.googleapis.com/kubernetes"
  

   master_authorized_networks_config {
    cidr_blocks {
      cidr_block   =  var.subnet_cider
      display_name = "Management CIDR"
    }
  }


  private_cluster_config {
    enable_private_endpoint = true
    enable_private_nodes    = true
    master_ipv4_cidr_block  = "${var.masternode_cidr}"
  }

  release_channel {
      channel = "STABLE"
  }

}

resource "google_container_node_pool" "app_cluster_linux_node_pool" {
  name           = "${google_container_cluster.app_cluster.name}--linux-node-pool"
  location       = google_container_cluster.app_cluster.location
  cluster        = google_container_cluster.app_cluster.name
  node_count     = "${var.node_number}"

  max_pods_per_node = 100

  management {
    auto_repair  = true
    auto_upgrade = true
  }

  node_config {
    machine_type    = "${var.machine_type}"
    preemptible     = true
    disk_size_gb    = "${var.disk_size}"
    disk_type       = "pd-standard"
    service_account = var.svacc
    oauth_scopes = ["cloud-platform"]

    labels = {
      cluster = google_container_cluster.app_cluster.name
    }

   
  }

  upgrade_settings {
    max_surge       = 1
    max_unavailable = 1
  }
}