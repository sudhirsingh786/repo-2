# Optional: enrich labels via repo-3
module "labels" {
  source = "git::https://github.com/sudhirsingh786/repo-3.git?ref=bucket-label-test"

  labels = var.labels
}

resource "google_compute_address" "this" {
  name         = var.name
  project      = var.project_id
  region       = var.region
  address_type = "EXTERNAL"

  # If you want to skip repo-3, replace module.labels.labels with var.labels
  labels = module.labels.labels
}
