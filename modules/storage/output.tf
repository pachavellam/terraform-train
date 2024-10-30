// gcp_storage_module/outputs.tf

output "bucket_name" {
  description = "Name of the storage bucket"
  value       = google_storage_bucket.bucket.name
}

output "bucket_url" {
  description = "URL of the storage bucket"
  value       = google_storage_bucket.bucket.url
}

output "bucket_self_link" {
  description = "Self link of the storage bucket"
  value       = google_storage_bucket.bucket.self_link
}