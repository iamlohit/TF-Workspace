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

resource "google_cloudfunctions2_function" "function" {
  name = "function-v2-tf"
  location = "us-central1"
  description = "A new V2 GCF using TF"

  build_config {
    runtime = "nodejs16"
    entry_point = "helloWorldtf"
    source {
      storage_source {
        bucket = google_storage_bucket.bucket.name
        object = google_storage_bucket_object.object.name
      }
    }
  }
  service_config {
    max_instance_count = 5
    available_memory = "256M"
    timeout_seconds = 300
  }
}

output "function_uri" { 
  value = google_cloudfunctions2_function.function.service_config[0].uri
}

