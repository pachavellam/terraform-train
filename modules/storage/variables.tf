// gcp_storage_module/variables.tf

variable "project" {
  description = "Google Cloud project ID"
  type        = string
}

variable "region" {
  description = "Google Cloud region"
  type        = string
  default     = "US"
}

variable "bucket_name" {
  description = "Name of the Google Cloud Storage bucket"
  type        = string
}

variable "storage_class" {
  description = "Storage class of the bucket"
  type        = string
  default     = "STANDARD"
}

variable "force_destroy" {
  description = "Force destroy the bucket even if it contains objects"
  type        = bool
  default     = false
}

variable "uniform_bucket_level_access" {
  description = "Enforce uniform bucket-level access"
  type        = bool
  default     = true
}

variable "lifecycle_age" {
  description = "Days after which objects are deleted (lifecycle rule)"
  type        = number
  default     = 30
}

