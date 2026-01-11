resource "google_storage_bucket" "this" {
  name     = var.bucket_name
  project  = var.project_id
  location = "US"

  uniform_bucket_level_access = true
}

resource "google_storage_bucket_iam_member" "viewer" {
  bucket = google_storage_bucket.this.name
  role   = "roles/storage.objectViewer"
  member = "user:singh.sudhir.ee@gmail.com"
}

module "labels" {
  source = "git::https://github.com/sudhirsingh786/repo-3.git?ref=bucket-label-test"

  labels = var.labels
}
