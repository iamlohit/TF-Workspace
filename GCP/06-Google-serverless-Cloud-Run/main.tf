resource "google_cloud_run_v2_service" "run-app-from-tf" {
  name = "run-app-from-tf"
  location = "asia-southeast1"

  template {
    scaling {
      min_instance_count = 0
      max_instance_count = 10
    }
    containers {
      name = "hello-world"
      image = "gcr.io/google-samples/hello-app:1.0"
    }
  }
}

resource "google_cloud_run_v2_job_iam_binding" "name" {
  members = "allUsers"
}