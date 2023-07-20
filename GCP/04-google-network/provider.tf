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
  zone = "uscentral-1a"
  region = "uscentral1"
  credentials = file("keys.json")
}