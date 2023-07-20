resource "google_compute_network" "auto-vpc-tf" {
    name = "auto-vpc-tf"
    auto_create_subnetworks = false
}

resource google_compute_network custom-vpc-tf {
    name = "custom-vpc-tf"
    auto_create_subnetworks = false
}

output "auto-vpc" {
  value = google_compute_network.auto-vpc-tf
}

output "custom" {
  value = google_compute_network.custom-vpc-tf
}