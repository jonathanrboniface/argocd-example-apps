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

locals {
  labels = {
    "data-project" = var.data-project
  }
}
