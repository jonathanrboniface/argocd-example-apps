terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.65.2"
    }
  }
}

provider "google" {
  project = "sandbox-johnny-boniface"
  region  = "europe-west2"
  zone    = "europe-west2-a"
}

# locals {
#   labels = {
#     "data-project" = var.data-project
#   }
# }

resource "google_compute_disk" "default" {
  name  = "test-disk"
  type  = "pd-ssd"
  zone  = "europe-west2-a"
  image = "debian-11-bullseye-v20220719"
  labels = {
    environment = "dev"
  }
  physical_block_size_bytes = 4096
}

resource "google_compute_disk" "default-2" {
  name  = "test-disk-2"
  type  = "pd-ssd"
  zone  = "europe-west2-a"
  image = "debian-11-bullseye-v20220719"
  labels = {
    environment = "dev"
  }
  physical_block_size_bytes = 4096
}
