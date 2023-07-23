# Spanner 101:
#     This is highly available (99.99% availability) and distributed (min. 3 read/write replicas) and horizontally scalable fast SQL database.
#     Here we are going to create a Spanner instance below.
#     Inside the instance, you can create a database.

resource "google_spanner_instance" "spanner_tf" {
  name = "spannertf"
  config = "regional-asia-south2"
  display_name = "Spanner from TF"
  num_nodes = 1
  labels = {
    "env" = "learningtf" 
  }
}

# Creating Database now

resource "google_spanner_database" "spanner_db_tf" {
  instance = google_spanner_instance.spanner_tf.name
  name = "spanner_db_tf"
  version_retention_period = "3d"
  ddl = [
    "CREATE TABLE t1 (t1 INT64 NOT NULL,) PRIMARY KEY(t1)",
    "CREATE TABLE t2 (t2 INT64 NOT NULL,) PRIMARY KEY(t2)",
  ]
}