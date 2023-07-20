resource "google_compute_network" "auto-vpc-tf" {
    name = "auto-vpc-tf"
    auto_create_subnetworks = false
}

resource google_compute_network custom-vpc-tf {
    name = "custom-vpc-tf"
    auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "usc1-subnet" {
    name = "usc1-subnet"
    network = google_compute_network.custom-vpc-tf.id
    ip_cidr_range = "10.1.0.0/24"
    region = "us-central1"
    private_ip_google_access = true
}

resource "google_compute_firewall" "allow-icmp" {
    name = "allow-icmp"
    network = google_compute_network.custom-vpc-tf.id

    allow {
      protocol = "icmp"
    }

    source_ranges = ["122.162.150.216/32"]
}

output "auto-vpc" {
  value = google_compute_network.auto-vpc-tf
}

output "custom" {
  value = google_compute_network.custom-vpc-tf
}