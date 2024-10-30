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


