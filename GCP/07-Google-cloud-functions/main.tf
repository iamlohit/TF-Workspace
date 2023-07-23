resource "google_storage_bucket" "bucket" {
  name = "${google.project}-gcf-source-tf"
  location = "US"
  uniform_bucket_level_access = true
}

