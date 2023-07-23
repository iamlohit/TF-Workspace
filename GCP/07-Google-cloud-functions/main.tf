resource "google_storage_bucket" "bucket" {
  name = "lj-gcf-source-tf-2"
  location = "US"
  uniform_bucket_level_access = true
}

resource "google_storage_bucket_object" "object" {
  name = "index.zip"
  bucket = google_storage_bucket.bucket.name
  source = "index.zip"
}

resource "google_cloudfunctions2_function" "function" {
  name = "function-v2-tf-2"
  location = "us-central1"
  description = "A new V2 GCF using TF"

  build_config {
    runtime = "nodejs14"
    entry_point = "helloWorldtf"
    
    source {
      storage_source {
        bucket = google_storage_bucket.bucket.name
        object = google_storage_bucket_object.object.name
      }
    }
  }
  service_config {
    max_instance_count = 1
    available_memory = "256M"
    timeout_seconds = 300
  }
}

output "function_uri" { 
  value = google_cloudfunctions2_function.function.service_config[0].uri
}

data "google_iam_policy" "admin" {
  binding {
    role = "roles/cloudfunctions.invoker"
    members = [
      "allUsers",
    ]
  }
}

resource "google_cloudfunctions2_function_iam_policy" "policy" {
  location = google_cloudfunctions2_function.function.location
  cloud_function = google_cloudfunctions2_function.function.name
  policy_data = data.google_iam_policy.admin.policy_data
}

# Note: Need to run the following commands to enable Unauth Access to this function by all users under cloud run.
# Not yet supported by current 4.74.0 Terraform Provider via Google Cloud Functions

        # gcloud functions add-invoker-policy-binding function-v2-tf-2 \
        #         --region="us-central1" \
        #         --member="allUsers"
