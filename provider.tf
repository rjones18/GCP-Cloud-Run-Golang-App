terraform {
  required_version = ">= 1.5.0"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 4.46.0"
    }
  }
}

provider "google" {
  # Configuration options
  project = var.project_id
  region  = var.location
  zone    = "us-central1-a"
  #credentials = "keys-tf.json"
}