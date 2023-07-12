resource "random_id" "rid" {
  byte_length = 1
}

resource "google_storage_bucket" "GCS1" {
  name = "tf-bucket-${random_id.rid.dec}"
  location = "US"
  storage_class = "NEARLINE"
}

resource "google_storage_bucket_object" "picture" {
  name = "abstract_wallpaper"
  bucket = google_storage_bucket.GCS1.name
  source = "architecture-building-city-glass-wallpaper-preview.jpg"
}