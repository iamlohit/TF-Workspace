terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.73.0"
    }
  }
}

provider "google" {
  project = "sandbox-20230402-w5065r"
  region = "us-central1"
  zone = "us-central1-a"
  credentials = file("keys.json")
}
