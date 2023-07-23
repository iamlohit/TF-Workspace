resource "google_storage_bucket" "bucket" {
  name = "${google.project}-gcf-source-tf"
  location = "US"
  uniform_bucket_level_access = true
}

resource "google_storage_bucket_object" "object" {
  name = "index.zip"
  bucket = google_storage_bucket.bucket.name
  source = "index.js"
}

