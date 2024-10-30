// gcp_instance_module/instances.tf

provider "google" {
  project = var.project
  region  = var.region
  zone    = var.zone
}

resource "google_compute_instance" "example" {
  name         = var.instance_name
  machine_type = var.machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = var.image
    }
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }
  service_account {
      # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
      email  = google_service_account.default.email
      scopes = ["cloud-platform"]
    }
  metadata_startup_script = <<-EOT
          #!/bin/bash
      EOT
  allow_stopping_for_update = true
}
