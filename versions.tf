terraform {
  required_version = ">= 1.5"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 6.0"
    }
  }

  # Bucket and prefix are passed in by the pipeline at "terraform init"
  backend "gcs" {}
}

provider "google" {
  project = var.project_id
  region  = var.region
  # No credentials here: GitHub Actions supplies them through OIDC
}