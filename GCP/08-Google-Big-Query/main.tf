# Creating a data set, that will have a table.
resource "google_bigquery_dataset" "bq_ds" {
  dataset_id = "ds_from_tf"
}

# Creating the table in side the above Data set
resource "google_bigquery_table" "table_tf" {
  dataset_id = google_bigquery_dataset.bq_ds.dataset_id
  table_id = "table_from_tf"
}

# These are just bare minimum parameters.
# BigQuery could deserves a repo of its own for its own project.
# So limiting to bare minimum as POC.
# The focus of this repo is to learn Terraform using Goolge Provider, and not BQ at the moment.