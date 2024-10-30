variable "project" {
  description = "Google Cloud project ID"
  type        = string
}

variable "region" {
  description = "Google Cloud region"
  type        = string
}

variable "zone" {
  description = "Google Cloud zone"
  type        = string
}

variable "instance_name" {
  description = "Name of the instance"
  type        = string
}

variable "machine_type" {
  description = "Machine type for the instance"
  type        = string
}

variable "image" {
  description = "Disk image for the instance"
  type        = string
}