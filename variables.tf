variable "project_id" {
  type        = string
  description = "GCP project ID (supplied by the pipeline)"
}

variable "region" {
  type        = string
  description = "Region for the bucket"
  default     = "us-central1"
}

variable "bucket_name" {
  type        = string
  description = "Globally unique name for the demo bucket"
}