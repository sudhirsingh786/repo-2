resource "google_service_account" "this" {
  account_id   = var.sa_name
  display_name = "Service Account ${var.sa_name}"
  project      = var.project_id
}
output "service_account_email" {
  value = google_service_account.this.email
}

module "labels" {
  source = "git::https://github.com/sudhirsingh786/repo-3.git?ref=bucket-label-test"

  labels = var.labels
}
