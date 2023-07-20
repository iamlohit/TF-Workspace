resource "google_compute_instance" "vm-from-tf" {
    name = "vm-from-tf"
    zone = "us-central1-a"
    machine_type = "n1-standard-2"
    allow_stopping_for_update = true
    network_interface {
      subnetwork = "usc1-subnet"
      
    }
    boot_disk {
      initialize_params {
        size = 10
        image = "debian-12-bookworm-v20230711"
        type = "pd-ssd"
      }
    auto_delete = false
    }

    labels = {
      "env" = "tflearning" 
    }

    scheduling {
      preemptible = true
      automatic_restart = false
    }
}

# Adding persistant disk, so it remains even if VM is deleted.
# But this does not attach the disk to the VM automatically.
resource "google_compute_disk" "tf-pd-ssd-1" {
    name = "tf-pd-ssd-1"
    type = "pd-ssd"
    zone = "us-central1-a"
}
