// gcp_instance_module/outputs.tf

output "instance_id" {
  description = "ID of the instance"
  value       = google_compute_instance.example.id
}

output "instance_self_link" {
  description = "Self link of the instance"
  value       = google_compute_instance.example.self_link
}

output "instance_public_ip" {
  description = "Public IP address of the instance"
  value       = google_compute_instance.example.network_interface[0].access_config[0].nat_ip
}
