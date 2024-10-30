// gcp_instance_module/variables.tf

variable "project" {
  description = "Google Cloud project ID"
  type        = string
  default     =  ""
}

variable "region" {
  description = "Google Cloud region"
  type        = string
  default     = ""
}

variable "zone" {
  description = "Google Cloud zone"
  type        = string
  default     = ""
}

variable "instances" {
  description = "List of instances to create"
  type = list(object({
    name         = string
    machine_type = string
    image        = string
    tags         = list(string)
  }))
}
