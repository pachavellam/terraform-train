// gcp_instance_module/instances.tf

provider "google" {
  project = var.project
  region  = var.region
  zone    = var.zone
}

