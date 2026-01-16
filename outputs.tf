output "reserved_ip_address" {
  value = google_compute_address.this.address
}

output "reserved_ip_self_link" {
  value = google_compute_address.this.self_link
}

output "reserved_ip_name" {
  value = google_compute_address.this.name
}