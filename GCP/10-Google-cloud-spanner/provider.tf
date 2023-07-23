terraform {
  required_providers {
    google = {
        source = "hashicorp/google"
        version = "4.74.0"
    }
  }
}

provider "google" {
  project = "sandbox-20230402-w5065r"
  zone = "us-central1-a"
  region = "us-central1"
  credentials = file("keys.json")
}