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
  region = "us-central1"
  zone = "us-central1-a"
}

resource "google_storage_bucket" "gcs1" {
  name = "bucket-from-tf-lohit-up" # This needs to be a globally unique name
  location = "us-central1"
}

# Before you run Terraform Plan/Apply, you need to have installed the Google Cloud SDK.
# Post that you need to run `gcloud auth application-default login`
    # Source: [https://registry.terraform.io/providers/hashicorp/google/latest/docs/guides/getting_started]

# Post that, we need to create the Google Cloud Storage Bucket
    # Source [https://cloud.google.com/storage/docs/creating-buckets#storage-create-bucket-terraform]

# This is one of the ways, to allow configuration from terraform on our Google Cloud, using our own login creds.
# In module 02, we will see, how to use our Service Account with Terraform to create resources on Google Cloud.
# Service accounts are the preferred way to configure machine-to-machine communication.