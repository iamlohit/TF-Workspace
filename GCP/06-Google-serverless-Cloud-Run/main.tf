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
      # image = "gcr.io/google-samples/hello-app:1.0"
      image = "gcr.io/google-samples/hello-app:2.0"
    }
  }

  traffic {
    type = "TRAFFIC_TARGET_ALLOCATION_TYPE_REVISION"
    percent = 50
    revision = "run-app-from-tf-00001-c4v"
  }

  traffic {
    type = "TRAFFIC_TARGET_ALLOCATION_TYPE_REVISION"
    percent = 50
    revision = "run-app-from-tf-00002-mdz"
  }
}

data "google_iam_policy" "admin" {
  binding {
    role = "roles/run.invoker"
    members = ["allUsers"]
  }
}

resource "google_cloud_run_v2_service_iam_policy" "policy" {
  project = google_cloud_run_v2_service.run-app-from-tf.project
  location = google_cloud_run_v2_service.run-app-from-tf.location
  name = google_cloud_run_v2_service.run-app-from-tf.name
  policy_data = data.google_iam_policy.admin.policy_data
}