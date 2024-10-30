// main.tf in root configuration

provider "google" {
  project = var.project
  region  = var.region
  zone    = var.zone
}

module "gcp_instances" {
  source   = "./modules/instances"
  project  = var.project
  region   = var.region
  zone     = var.zone
  instances = [
    {
      name         = "tf-instance-1"
      machine_type = "n1-standard-1"
      image        = "projects/debian-cloud/global/images/family/debian-12"

    },
    {
      name         = "tf-instance-2"
      machine_type = "n1-standard-1"
      image        = "projects/debian-cloud/global/images/family/debian-12"

    }
  ]
}

//terraform {
//  backend "gcs" {
//    bucket  = "Bucket Name"
//    prefix  = "terraform/state"
  //}
//}
