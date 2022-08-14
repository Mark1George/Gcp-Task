// instance
resource "google_compute_instance" "default" {
  name         = "${var.instance_name}"
  machine_type = "${var.instance_type}"
  zone         = "${var.instance_zone}"

  boot_disk {
    initialize_params {
      image = "${var.image}"
      type  = "pd-standard"
      size  = 20
    }
  }

  network_interface {
    network    =  "${var.instance_network}"
    subnetwork = "${var.subnet_name}"
    
  }

  service_account {
    email  = var.svacc
    scopes = ["cloud-platform"]
  }
}