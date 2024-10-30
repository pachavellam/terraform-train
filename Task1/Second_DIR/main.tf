// main.tf in the root configuration

provider "google" {
  project = var.project
  region  = var.region
  zone    = var.zone
}

module "gcp_instance" {
  source        = "./modules/instances"
  project       = var.project
  region        = var.region
  zone          = var.zone
  instance_name = var.instance_name
  machine_type  = var.machine_type
  image         = var.image

}
