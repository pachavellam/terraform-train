// gcp_instance_module/outputs.tf

output "instance_names" {
  description = "Names of the instances"
  value       = [for instance in google_compute_instance.instances : instance.name]
}

output "instance_self_links" {
  description = "Self links of the instances"
  value       = [for instance in google_compute_instance.instances : instance.self_link]
}

output "instance_ips" {
  description = "Public IP addresses of the instances"
  value       = [for instance in google_compute_instance.instances : instance.network_interface[0].access_config[0].nat_ip]
}
