// gcp_instance_module/main.tf

provider "google" {
  project = var.project
  region  = var.region
  zone    = var.zone
}

resource "google_compute_instance" "instances" {
  for_each    = { for instance in var.instances : instance.name => instance }
  name        = each.value.name
  machine_type = each.value.machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = each.value.image
    }
  }

  network_interface {
    network = "default"
    access_config {}  // Ephemeral public IP
  }

   metadata_startup_script = <<-EOT
           #!/bin/bash
       EOT
   allow_stopping_for_update = true
}
