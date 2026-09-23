resource "google_storage_bucket" "demo" {
  name          = var.bucket_name
  location      = var.region
  storage_class = "STANDARD"
  force_destroy = true # allows destroy even if objects exist (demo only)

  uniform_bucket_level_access = true
  public_access_prevention    = "enforced"

  versioning {
    enabled = true
  }

  lifecycle_rule {
    condition {
      age = 30
    }
    action {
      type = "Delete"
    }
  }

  labels = {
    env        = "dev"
    managed_by = "terraform"
  }
}