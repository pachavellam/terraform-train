// main.tf in the root configuration

provider "google" {
  project = var.project
  region  = var.region
  zone    = var.zone
}
