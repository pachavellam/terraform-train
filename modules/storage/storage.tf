

provider "google" {
  project = var.project
  region  = var.region
}

resource "google_storage_bucket" "bucket" {
  name                        = var.bucket_name
  location                    = var.region
  storage_class               = var.storage_class
  force_destroy               = var.force_destroy
  uniform_bucket_level_access = var.uniform_bucket_level_access

  lifecycle_rule {
    action {
      type = "Delete"
    }
    condition {
      age = var.lifecycle_age
    }
  }

  labels = var.labels
}
